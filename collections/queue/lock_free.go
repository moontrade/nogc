//go:build !tinygo
// +build !tinygo

package queue

import (
	"github.com/moontrade/nogc"
	"sync/atomic"
	"unsafe"
)

// LockFree is a simple non-blocking and concurrent queue.
type LockFree struct {
	head   uintptr
	tail   uintptr
	length int32
}

type lockFreeNode struct {
	value nogc.Bytes
	next  uintptr
}

//goland:noinspection GoVetUnsafePointer
func AllocLockFreeQueue() *LockFree {
	q := (*LockFree)(unsafe.Pointer(nogc.Alloc(unsafe.Sizeof(LockFree{}))))
	n := nogc.Alloc(unsafe.Sizeof(lockFreeNode{}))
	node := (*lockFreeNode)(unsafe.Pointer(n))
	node.value = nogc.Bytes{}
	node.next = 0
	q.head = uintptr(n)
	q.tail = uintptr(n)
	q.length = 0
	return q
}

func (l *LockFree) Free() {
	nogc.Free(nogc.Pointer(unsafe.Pointer(l)))
}

// Enqueue puts the given value v at the tail of the queue.
//goland:noinspection GoVetUnsafePointer
func (q *LockFree) Enqueue(task nogc.Bytes) {
	n := uintptr(nogc.Alloc(unsafe.Sizeof(lockFreeNode{})))
	node := (*lockFreeNode)(unsafe.Pointer(n))
	node.value = task
	node.next = 0
retry:
	last := atomic.LoadUintptr(&q.tail)
	lastV := (*lockFreeNode)(unsafe.Pointer(last))
	next := atomic.LoadUintptr(&lastV.next)
	// Are tail and next consistent?
	if last == atomic.LoadUintptr(&q.tail) {
		if next == 0 {
			// Try to link node at the end of the linked list.
			if atomic.CompareAndSwapUintptr(&lastV.next, next, n) { // enqueue is done.
				// Try to swing tail to the inserted node.
				atomic.CompareAndSwapUintptr(&q.tail, last, n)
				atomic.AddInt32(&q.length, 1)
				return
			}
		} else { // tail was not pointing to the last node
			// Try to swing tail to the next node.
			atomic.CompareAndSwapUintptr(&q.tail, last, next)
		}
	}
	goto retry
}

// Dequeue removes and returns the value at the head of the queue.
// It returns nil if the queue is empty.
//goland:noinspection GoVetUnsafePointer
func (q *LockFree) Dequeue() nogc.Bytes {
retry:
	first := atomic.LoadUintptr(&q.head)
	firstV := (*lockFreeNode)(unsafe.Pointer(first))
	last := atomic.LoadUintptr(&q.tail)
	next := atomic.LoadUintptr(&firstV.next)
	// Are first, tail, and next consistent?
	if first == atomic.LoadUintptr(&q.head) {
		// Is queue empty or tail falling behind?
		if first == last {
			// Is queue empty?
			if next == 0 {
				//println("empty")
				return nogc.Bytes{}
			}
			//println("first == tail")
			atomic.CompareAndSwapUintptr(&q.tail, last, next) // tail is falling behind, try to advance it.
		} else {
			// Read value before CAS, otherwise another dequeue might free the next node.
			task := (*lockFreeNode)(unsafe.Pointer(next)).value
			if atomic.CompareAndSwapUintptr(&q.head, first, next) { // dequeue is done, return value.
				atomic.AddInt32(&q.length, -1)
				nogc.Free(nogc.Pointer(first))
				return task
			}
		}
	}
	goto retry
}

// Empty indicates whether this queue is empty or not.
func (q *LockFree) Empty() bool {
	return atomic.LoadInt32(&q.length) == 0
}

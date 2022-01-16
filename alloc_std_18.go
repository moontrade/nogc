//go:build generics

package nogc

import (
	"sync/atomic"
	"unsafe"
)

// RC is a reference count container. It utilizes atomic operations for count incr/decr.
type RC[T any] struct {
	ptr  PointerOf[T]
	refs uintptr
}

func (rc *RC[T]) Unwrap() *T {
	return rc.ptr.Unwrap()
}

func (rc *RC[T]) Close() error {
	rc.Free()
	return nil
}

func (rc *RC[T]) Free() bool {
	if rc.ptr.Ptr == 0 {
		return false
	}
	if atomic.AddUintptr(&rc.refs, ^uintptr(0)) == 0 {
		rc.ptr.Free()
		return true
	}
	return false
}

func (rc *RC[T]) Clone() *RC[T] {
	atomic.AddUintptr(&rc.refs, 1)
	return rc
}

func (rc *RC[T]) Scope(fn func(rc *RC[T])) {
	if fn == nil {
		return
	}
	atomic.AddUintptr(&rc.refs, 1)
	defer atomic.AddUintptr(&rc.refs, ^uintptr(0))
	fn(rc)
}

type RCPointer[T any] struct {
	rc *RC[T]
}

func (rc *RCPointer[T]) Unwrap() *T {
	return rc.rc.Unwrap()
}

func (rc RCPointer[T]) Clone() RCPointer[T] {
	rc.rc.Clone()
	return rc
}

func (rc *RCPointer[T]) Scope(fn func(rc *RC[T])) {
	if fn == nil {
		return
	}
	r := rc.rc
	if r != nil {
		rc.Scope(fn)
	}
}

func (rc *RCPointer[T]) Close() error {
	rc.Free()
	return nil
}

func (rc *RCPointer[T]) Free() {
	r := rc.rc
	if r != nil && r.Free() {
		Free(Pointer(unsafe.Pointer(rc.rc)))
		rc.rc = nil
	}
}

func NewRC[T any](p Pointer) *RC[T] {
	return &RC[T]{ptr: PointerOf[T]{Ptr: p}, refs: 1}
}

func AllocRC[T any](p Pointer) RCPointer[T] {
	a := Alloc(unsafe.Sizeof(RC[T]{}))
	rc := (*RC[T])(a.Unsafe())
	rc.ptr = PointerOf[T]{Ptr: p}
	return RCPointer[T]{rc: rc}
}

// Dangling is a pointer that is owned elsewhere. It does not allow freeing. Generally,
// it is advised to not store dangling pointers.
type Dangling[T any] struct {
	ptr Pointer
}

func (d Dangling[T]) IsNil() bool {
	return d.ptr == 0
}

func (d *Dangling[T]) Unwrap() *T {
	return (*T)(d.ptr.Unsafe())
}

func DanglingOf[T any](p Pointer) Dangling[T] {
	return Dangling[T]{ptr: p}
}

// PointerOf is a typed Pointer.
type PointerOf[T any] struct {
	Ptr Pointer
}

func AllocZeroOf[T any]() PointerOf[T] {
	var initial T
	return PointerOf[T]{Ptr: AllocZeroed(unsafe.Sizeof(initial))}
}

// AllocOf is a convenience function to allocate a Go struct outside of Go GC territory.
// Slight performance penalty given it requires a copy of initial struct by value in
// goroutine stack memory. If inside extreme performance sensitive area then manually inline.
func AllocOf[T any](initial T) PointerOf[T] {
	// Alloc non-zeroed memory
	p := PointerOf[T]{Ptr: Alloc(unsafe.Sizeof(initial))}
	// Initialize memory
	*p.Unwrap() = initial
	return p
}

func PointerToOf[T any](p Pointer) PointerOf[T] {
	return PointerOf[T]{Ptr: p}
}

func (p PointerOf[T]) Pointer() Pointer {
	return p.Ptr
}

func (p *PointerOf[T]) Unwrap() *T {
	return (*T)(p.Ptr.Unsafe())
}

func (p *PointerOf[T]) Free() {
	if p.Ptr == 0 {
		return
	}
	Free(p.Ptr)
	p.Ptr = 0
}

func (p *PointerOf[T]) Close() error {
	p.Free()
	return nil
}

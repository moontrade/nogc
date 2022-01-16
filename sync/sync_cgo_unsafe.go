//go:build !tinygo && (amd64 || arm64)

package synchronization

/*
#cgo LDFLAGS: -L. -lstdc++
#cgo CXXFLAGS: -std=c++20 -I.
#include <stdlib.h>
#include <pthread.h>
#include "lock.h"
//#include "RWSpinLock.h"

typedef struct {
	uint64_t nanos;
} moontrade_sleep_t;

void do_moontrade_sleep(size_t arg0, size_t arg1) {
	moontrade_sleep_t* args = (moontrade_sleep_t*)(void*)arg0;
    moontrade_lock_sleep(args->nanos);
}

*/
import "C"
import (
	"github.com/moontrade/nogc/unsafecgo"
	"time"
	"unsafe"
)

// RWLock is a C++ based Read/Write spinlock tuned for performance. It performs slightly better than
// a Go sync.RWMutex, however both native code and Go code can use it. If staying in Go, use sync.RWMutex.
// It will lock a Go scheduler thread up so use it intelligently.
type RWLock struct {
	ptr uintptr
}

type RWLockPointer struct {
	RWLock
}

func NewLock() RWLockPointer {
	var result uintptr
	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_new), uintptr(unsafe.Pointer(&result)), 0)
	return RWLockPointer{RWLock{ptr: result}}
}

func (rw RWLockPointer) Close() error {
	rw.Free()
	return nil
}

func (rw *RWLockPointer) Free() {
	args := struct {
		lock uintptr
	}{
		lock: uintptr(unsafe.Pointer(rw)),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_destroy), ptr, 0)
	//C.moontrade_rwlock_destroy(unsafe.Pointer(rw))
}

func Sleep(nanos time.Duration) {
	C.moontrade_lock_sleep(C.uint64_t(nanos))
}

func SleepUnsafe(nanos time.Duration) {
	args := struct {
		nanos uint64
	}{
		nanos: uint64(nanos),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_moontrade_sleep), ptr, 0)
}

func (rw RWLock) Lock() {
	C.moontrade_rwlock_lock(C.size_t(rw.ptr), 0)
}

func (rw RWLock) TryLock() bool {
	var success uintptr
	C.moontrade_rwlock_try_lock(C.size_t(rw.ptr), C.size_t(uintptr(unsafe.Pointer(&success))))
	return success != 0
}

func (rw RWLock) TryLockUnsafe() bool {
	var success uintptr
	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_try_lock), rw.ptr, uintptr(unsafe.Pointer(&success)))
	return success != 0
}

func (rw RWLock) LockUnsafe() {
	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_lock), rw.ptr, 0)
}

func (rw RWLock) Unlock() {
	C.moontrade_rwlock_unlock(C.size_t(rw.ptr), 0)
}

func (rw RWLock) UnlockUnsafe() {
	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_unlock), rw.ptr, 0)
}

func (rw RWLock) LockShared() {
	C.moontrade_rwlock_lock_shared(C.size_t(rw.ptr), 0)
}

func (rw RWLock) LockSharedUnsafe() {
	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_lock_shared), rw.ptr, 0)
}

func (rw RWLock) TryLockShared() bool {
	var success uintptr
	C.moontrade_rwlock_try_lock_shared(C.size_t(rw.ptr), C.size_t(uintptr(unsafe.Pointer(&success))))
	return success != 0
}

func (rw RWLock) TryLockSharedUnsafe() bool {
	var success uintptr
	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_try_lock_shared), rw.ptr, uintptr(unsafe.Pointer(&success)))
	return success != 0
}

func (rw RWLock) UnlockShared() {
	C.moontrade_rwlock_unlock_shared(C.size_t(rw.ptr), 0)
}

func (rw RWLock) UnlockSharedUnsafe() {
	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_unlock_shared), rw.ptr, 0)
}

type RWTicketLock64 struct {
	ptr uintptr
}

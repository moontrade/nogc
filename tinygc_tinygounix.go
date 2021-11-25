//go:build tinygo && gc.provided && (darwin || (linux && !baremetal && !wasi) || (freebsd && !baremetal)) && !nintendoswitch
// +build tinygo
// +build gc.provided
// +build darwin linux,!baremetal,!wasi freebsd,!baremetal
// +build !nintendoswitch

package nogc

import (
	"unsafe"
)

////////////////////////////////////////////////////////////////////////////////////
// GC Instance
////////////////////////////////////////////////////////////////////////////////////

var collector *gc

//go:linkname gcInitHeap runtime.gcInitHeap
func gcInitHeap(heapStart, heapEnd uintptr) {
	println("gcInitHeap", uint(heapStart), uint(heapEnd))
	//if allocator == nil {
	//	initAllocator(heapStart, heapEnd)
	//}
	collector = newGC(64, doMarkGlobals, doMarkStack)
}

////////////////////////////////////////////////////////////////////////////////////
// gcAlloc hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcAlloc runtime.gcAlloc
func gcAlloc(size uintptr) unsafe.Pointer {
	if gc_TRACE {
		println("gcAlloc", uint(size))
	}

	ptr := collector.New(size)
	//println("alloc ptr", uint(ptr))
	return unsafe.Pointer(ptr)
}

////////////////////////////////////////////////////////////////////////////////////
// gcFree hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcFree runtime.gcFree
func gcFree(ptr unsafe.Pointer) {
	if gc_TRACE {
		println("gcFree", uint(uintptr(ptr)))
	}
	println("gcFree", uint(uintptr(ptr)))
	if !collector.Free(uintptr(ptr)) {
		Free(Pointer(ptr))
	}
}

////////////////////////////////////////////////////////////////////////////////////
// gcRun hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcRun runtime.gcRun
func gcRun() {
	//start := time.Now().UnixNano()

	collector.Collect()

	//println("full GC", time.Now().UnixNano()-start)
	collector.Print()
}

//go:linkname gcKeepAlive runtime.gcKeepAlive
func gcKeepAlive(x interface{}) {
	//println("gcKeepAlive")
}

//go:linkname gcSetFinalizer runtime.gcSetFinalizer
func gcSetFinalizer(obj interface{}, finalizer interface{}) {
	//println("gcSetFinalizer")
}

////////////////////////////////////////////////////////////////////////////////////
// gcSetHeapEnd hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcSetHeapEnd runtime.gcSetHeapEnd
func gcSetHeapEnd(newHeapEnd uintptr) {
	//println("gcSetHeapEnd", uint(newHeapEnd))
}

////////////////////////////////////////////////////////////////////////////////////
// markGlobals hook
////////////////////////////////////////////////////////////////////////////////////

func doMarkGlobals() {
	markGlobals()
	markScheduler()
}

//go:linkname markGlobals runtime.markGlobals
func markGlobals()

//go:linkname gcMarkGlobals runtime.gcMarkGlobals
func gcMarkGlobals(start, end uintptr) {
	println("gcMarkGlobals", uint(start), uint(end))
	//collector.markRoots(Pointer(start), Pointer(end))
	collector.markRoot(end)
}

////////////////////////////////////////////////////////////////////////////////////
// markStack hook
////////////////////////////////////////////////////////////////////////////////////

func doMarkStack() {
	markStack()
}

//go:linkname markStack runtime.markStack
func markStack()

////////////////////////////////////////////////////////////////////////////////////
// gcMarkRoots hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcMarkRoots runtime.gcMarkRoots
func gcMarkRoots(start, end uintptr) {
	//println("gcMarkRoots", uint(start), uint(end))
	if start == 0 {
		collector.markRoot(end)
	} else {
		if end-start < 1000000 {
			collector.markRoots(start, end)
		} else {
			collector.markRoot(end)
		}
	}
}

////////////////////////////////////////////////////////////////////////////////////
// gcMarkRoot hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcMarkRoot runtime.gcMarkRoot
func gcMarkRoot(addr, root uintptr) {
	//println("gcMarkRoot", uint(addr), uint(root))
	collector.markRoot(root)
}

////////////////////////////////////////////////////////////////////////////////////
// markScheduler hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname markScheduler runtime.markScheduler
func markScheduler()

////////////////////////////////////////////////////////////////////////////////////
// gcMarkTask hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcMarkTask runtime.gcMarkTask
func gcMarkTask(runQueuePtr, taskPtr uintptr) {
	println("gcMarkTask", uint(runQueuePtr), uint(taskPtr))
	collector.markRoot(taskPtr)
}

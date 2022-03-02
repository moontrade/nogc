//go:build gc.provided && tinygo.wasm

package nogc

import (
	"unsafe"
)

func getCollector() *gc {
	if collector != nil {
		return collector
	}
	p := AllocZeroed(unsafe.Sizeof(gc{}))
	collector = (*gc)(p.Unsafe())
	initGC(collector, 64)
	return collector
}

////////////////////////////////////////////////////////////////////////////////////
// GC Instance
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcInitHeap runtime.gcInitHeap
func gcInitHeap(heapStart, heapEnd uintptr) {
	if allocator == nil {
		if gc_TRACE {
			println("gcInitHeap initAllocator", uint(heapStart), uint(heapEnd))
		}
		initAllocator(heapStart, heapEnd)
	} else {
		println("allocator is already initialized")
	}
	if gc_TRACE {
		println("gcInitHeap", uint(heapStart), uint(heapEnd))
	}
	//p := AllocZeroed(unsafe.Sizeof(gc{}))
	//collector = (*gc)(p.Unsafe())
	getCollector()
	//initGC(&collector, 64)
	//collector = newGC(64, doMarkGlobals, doMarkStack)
}

////////////////////////////////////////////////////////////////////////////////////
// gcAlloc hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcAlloc runtime.gcAlloc
func gcAlloc(size uintptr, layout unsafe.Pointer) unsafe.Pointer {
	if gc_TRACE {
		println("gcAlloc", uint(size))
	}

	//ptr := AllocZeroed(size)
	ptr := collector.New(size)
	return unsafe.Pointer(ptr)
}

//go:linkname gcRealloc runtime.gcRealloc
func gcRealloc(ptr unsafe.Pointer, size uintptr) unsafe.Pointer {
	if gc_TRACE {
		println("gcRealloc", uint(uintptr(ptr)), "size", uint(size))
	}
	p := collector.Realloc(uintptr(ptr), size)
	return unsafe.Pointer(p)
}

////////////////////////////////////////////////////////////////////////////////////
// gcFree hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcFree runtime.gcFree
func gcFree(ptr unsafe.Pointer) {
	if gc_TRACE {
		println("gcFree", uint(uintptr(ptr)))
	}
	if !collector.Free(uintptr(ptr)) {
		Free(Pointer(ptr))
	}
}

//go:linkname gcRegisterGlobal runtime.gcRegisterGlobal
func gcRegisterGlobal(ptr uintptr, tag int) {
	if gc_TRACE {
		println("gcRegisterGlobal", uint(ptr), "tag", tag)
	}
	switch tag {
	case 1:
		getCollector().runqueue = ptr
	case 2:
		getCollector().sleepQueue = ptr
	case 3:
		//println("gcRegisterGlobal", uint(ptr), "tag", tag)
		getCollector().currentTask = ptr
	case 4:
		getCollector().heapStart = ptr
	case 5:
		getCollector().heapEnd = ptr
	case 6:
		getCollector().globalsStart = ptr
	case 7:
		getCollector().globalsEnd = ptr
	case 8:
		getCollector().envArgs = ptr
	case 9:
		getCollector().envArgsPointer = ptr
	}
}

////////////////////////////////////////////////////////////////////////////////////
// gcRun hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcRun runtime.gcRun
func gcRun() {
	if gc_TRACE {
		println("gcRun")
	}
	//start := time.Now().UnixNano()

	collector.Collect()

	//println("full GC", time.Now().UnixNano()-start)
	//collector.Print()
}

//go:linkname gcKeepAlive runtime.gcKeepAlive
func gcKeepAlive(x interface{}) {
	if gc_TRACE {
		println("gcKeepAlive")
	}
}

//go:linkname gcSetFinalizer runtime.gcSetFinalizer
func gcSetFinalizer(obj interface{}, finalizer interface{}) {
	if gc_TRACE {
		println("gcSetFinalizer")
	}
}

////////////////////////////////////////////////////////////////////////////////////
// gcSetHeapEnd hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcSetHeapEnd runtime.gcSetHeapEnd
func gcSetHeapEnd(newHeapEnd uintptr) {
	if gc_TRACE {
		println("gcSetHeapEnd", uint(newHeapEnd))
	}
}

////////////////////////////////////////////////////////////////////////////////////
// markGlobals hook
////////////////////////////////////////////////////////////////////////////////////

func doMarkGlobals() {
	if gc_TRACE {
		println("doMarkGlobals")
	}
	markScheduler()
	markGlobals()
}

//go:linkname markGlobals runtime.markGlobals
func markGlobals()

//go:linkname gcMarkGlobals runtime.gcMarkGlobals
func gcMarkGlobals(start, end uintptr) {
	if gc_TRACE {
		println("gcMarkGlobals", uint(start), uint(end))
	}
	//println("gcMarkGlobals", uint(start), uint(end))
	//println("gc struct", uint(uintptr(unsafe.Pointer(&collector))), uint(uintptr(unsafe.Pointer(&collector)))+uint(unsafe.Sizeof(gc{})))
	collector.markRoots(start, end)
}

////////////////////////////////////////////////////////////////////////////////////
// markStack hook
////////////////////////////////////////////////////////////////////////////////////

func doMarkStack() {
	if gc_TRACE {
		println("doMarkStack")
	}
	markStack()
}

//go:linkname gcMarkStackObject runtime.gcMarkStackObject
func gcMarkStackObject(start, end uintptr) {
	if gc_TRACE {
		println("gcMarkStackObject", uint(start), uint(end))
	}
	println("gcMarkStackObject", uint(start), uint(end))
	collector.markRoots(start, end)
}

//go:linkname markStack runtime.markStack
func markStack()

////////////////////////////////////////////////////////////////////////////////////
// gcMarkRoots hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcMarkRoots runtime.gcMarkRoots
func gcMarkRoots(start, end uintptr) {
	if gc_TRACE {
		println("gcMarkRoots", uint(start), uint(end))
	}
	collector.markRoots(start, end)
}

////////////////////////////////////////////////////////////////////////////////////
// gcMarkRoot hook
////////////////////////////////////////////////////////////////////////////////////

//go:linkname gcMarkRoot runtime.gcMarkRoot
func gcMarkRoot(addr, root uintptr) {
	if gc_TRACE {
		println("gcMarkRoot", uint(addr), uint(root))
	}
	if root == 0 {
		return
	}
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
	if gc_TRACE {
		println("gcMarkTask", uint(allocator.HeapStart), uint(runQueuePtr), uint(taskPtr))
	}
	println("gcMarkTask", uint(allocator.HeapStart), uint(runQueuePtr), uint(taskPtr))
	if taskPtr == 0 {
		return
	}
	collector.markRoot(taskPtr)
}

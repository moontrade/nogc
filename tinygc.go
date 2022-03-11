//go:build tinygo && gc.provided

package nogc

import (
	"time"
	"unsafe"
)

const (
	//gc_WHITE       uintptr = 1 << (bits.UintSize-1)
	//gc_BLACK       uintptr = 1 << (bits.UintSize-2)
	//gc_COLOR_MASK = gc_WHITE | gc_BLACK
	gc_WHITE uint32 = 0
	gc_BLACK uint32 = 1
	gc_DEBUG        = false
	gc_TRACE        = false

	// Overhead of a garbage collector object. Excludes memory manager block overhead.
	gc_ObjectOverhead = unsafe.Sizeof(gcObject{})
	//gc_ObjectOverhead = unsafe.Sizeof(gcObject{}) - _TLSFBlockOverhead + unsafe.Sizeof(uintptr(0))

	// Maximum size of a garbage collector object's payload.
	gc_ObjectMaxSize = (1 << 30) - gc_ObjectOverhead

	// Overhead of a garbage collector object. Excludes memory manager block overhead.
	//gc_ObjectOverhead = gc_ObjectOverhead
)

//type GCObject uintptr
//
//func (o GCObject) Ptr() Pointer {
//	return Pointer(o)
//}

// GC is a Two-Color Mark & Sweep collector on top of a Two-Level Segmented Fit (Heap)
// allocator built for TinyGo. Similar features to the internal extalloc GC in TinyGo
// except GC uses a robinhood hashset instead of a treap structure and without the need
// for a linked list. Instead, a single linear allocation is used for the hashset. Both
// colors reside in the same hashset. It should provide faster scan performance which
// becomes more noticeable as the scan size increases. For large objects, it's more ideal
// to allocate directly in the Heap allocator manually.
//
// Given the constraints of TinyGo, this is a conservative collector. However, GC
// is tuned for more manual use of the underlying Heap memory allocator. Heap is an O(1)
// time allocator and a great fit for real-time embedded systems. GC compliments
// it with a simple design and extremely quick operation for small object graphs.
//
// Large object graphs should be manually allocated and use the various tools available
// like AutoFree and Ref containers. GC supports a manual free as well as provided by
// the TinyGo compiler. TinyGo LLVM coroutines utilize this feature for internal coroutine
// lifecycle objects. It's quite simple to write Go programs with goroutines and channels
// that never require a GC cycle / sweep.
//
// Goal pause times are less than 10 microseconds. GC aims to complete as quickly
// as possible, but it is largely dependent on the application minimizing root scanning
// by placing manually allocated globals where possible. This effectively removes that
// graph from the marking phase.
//
// Relatively large TinyGo object graphs should still complete under 50 microseconds.
type gc struct {
	//allocs uintptr
	allocs PointerSet
	//set1   PointerSet
	//set2   PointerSet

	first, last                       uintptr
	maxPointersToScan                 uintptr
	sleepQueue, runqueue, currentTask uintptr
	heapStart, heapEnd                uintptr
	globalsStart, globalsEnd          uintptr
	envArgs                           uintptr
	envArgsPointer                    uintptr
	initGlobals                       bool
	//markGlobals              markFn
	//markStack                markFn
	GCStats
}

var collector *gc

type markFn func()

// GCStats provides all the monitoring metrics needed to see how the GC
// is operating and performing.
type GCStats struct {
	Started           int64   // Epoch in nanos when GC was first started
	Cycles            int64   // Number of times GC collect Has ran
	Live              int64   // Number of live objects
	TotalAllocs       int64   // Count of all allocations created
	TotalBytes        int64   // Sum of all allocation's size in bytes
	Frees             int64   // Count of times an allocation was freed instead of swept
	FreedBytes        int64   // Sum of all freed allocation's size in bytes
	Sweeps            int64   // Count of times an allocation was swept instead of freed
	SweepBytes        int64   // Sum of all swept allocation's size in bytes
	SweepTime         int64   // Sum of all time in nanos spent during the Sweep phase
	SweepTimeMin      int64   // Minimum time in nanos spent during a single Sweep phase
	SweepTimeMax      int64   // Maximum time in nanos spent during a single Sweep phase
	SweepTimeAvg      int64   // Average time in nanos spent during a single Sweep phase
	Roots             int64   //
	RootsMin          int64   //
	RootsMax          int64   //
	RootsTimeMin      int64   //
	RootsTimeMax      int64   //
	RootsTimeAvg      int64   //
	GraphDepth        int64   //
	GraphMinDepth     int64   //
	GraphMaxDepth     int64   //
	GraphAvgDepth     int64   //
	GraphTimeMin      int64   //
	GraphTimeMax      int64   //
	GraphTimeAvg      int64   //
	TotalTime         int64   // Sum of all time in nanos spent doing GC collect
	MinTime           int64   // Minimum time in nanos spent during a single GC collect
	MaxTime           int64   // Maximum time in nanos spent during a single GC collect
	AvgTime           int64   // Average time in nanos spent during a single GC collect
	LastMarkRootsTime int64   // Time in nanos spent during the most recent GC collect "Mark Roots" phase
	LastMarkGraphTime int64   // Time in nanos spent during the most recent GC collect "Mark Graph" phase
	LastSweepTime     int64   // Time in nanos spent during the most recent GC collect "Sweep" phase
	LastGCTime        int64   // Time in nanos spent during the most recent GC collect
	LastSweep         int64   // Number of allocations that were swept during the most recent GC collect "Sweep" phase
	LastSweepBytes    int64   // Number of bytes reclaimed during the most recent GC collect "Sweep" phase
	LiveBytes         uintptr // Sum of all live allocation's size in bytes
}

func (s *GCStats) Print() {
	println("GC cycle")
	println("\tlive:				", uint(s.Live))
	println("\tlive bytes:			", uint(s.LiveBytes))
	println("\tfrees:				", uint(s.Frees))
	println("\tallocs:				", uint(s.TotalAllocs))
	println("\tfreed bytes:		", uint(s.FreedBytes))
	println("\tsweep bytes:		", uint(s.SweepBytes))
	println("\ttotal bytes:		", uint(s.TotalBytes))
	println("\tlast sweep:			", uint(s.LastSweep))
	println("\tlast sweep bytes:	", uint(s.LastSweepBytes))
	println("\tlast mark time:		", toMicros(s.LastMarkRootsTime), microsSuffix)
	println("\tlast graph time:	", toMicros(s.LastMarkGraphTime), microsSuffix)
	println("\tlast sweep time:	", toMicros(s.LastSweepTime), microsSuffix)
	println("\tlast GC time:		", toMicros(s.LastGCTime), microsSuffix)
}

func PrintGCStats() {
	collector.GCStats.Print()
}

func PrintDebugInfo() {
	println("gc_ObjectOverhead	", uint(gc_ObjectOverhead))
	println("gc_ObjectMaxSize		", uint(gc_ObjectMaxSize))
	println("gc_ObjectOverhead		", uint(gc_ObjectOverhead))
}

//goland:noinspection ALL
func initGC(
	g *gc,
	initialCapacity uintptr,
	//markGlobals, markStack markFn,
) {
	//g := (*gc)(unsafe.Pointer(AllocZeroed(unsafe.Sizeof(gc{}))))
	//g.set1 = NewPointerSet(initialCapacity)
	//g.set2 = NewPointerSet(initialCapacity)
	//g.allocs = uintptr(unsafe.Pointer(&g.set1))
	g.allocs = NewPointerSet(initialCapacity)
	g.first = ^uintptr(0)
	g.last = 0
	//g.markGlobals = markGlobals
	//g.markStack = markStack
	g.Started = time.Now().UnixNano()
}

////goland:noinspection ALL
//func newGC(
//	initialCapacity uintptr,
//	markGlobals, markStack markFn,
//) gc {
//	g := (*gc)(unsafe.Pointer(AllocZeroed(unsafe.Sizeof(gc{}))))
//	g.allocs = NewPointerSet(initialCapacity)
//	g.first = ^uintptr(0)
//	g.last = 0
//	g.markGlobals = markGlobals
//	g.markStack = markStack
//	g.Started = time.Now().UnixNano()
//	return g
//}

// GCObject Represents a managed object in memory, consisting of a header followed by the object's data.
type gcObject struct {
	//cap    uint32
	color  uint32 // alloc.Pointer to the next object with color flags stored in the alignment bits.
	rtSize uint32 // Runtime size.
	//tag    uint32
	//_      uint32
	//_      uint32
}

func (g *gc) isReserved(root uintptr) bool {
	if root == 0 {
		return true
	}
	switch root {
	case g.runqueue:
		println("runqueue")
		return true
	case g.sleepQueue:
		println("sleepQueue")
		return false
	case g.currentTask:
		println("currentTask")
		return true
	case g.heapStart:
		println("heapStart")
		return true
	case g.heapEnd:
		println("heapEnd")
		return true
	case g.globalsStart:
		println("globalsStart")
		return true
	case g.globalsEnd:
		println("globalsEnd")
		return true
	case g.envArgs:
		println("envArgs")
		return true
	case g.envArgsPointer:
		println("envArgsPointer")
		return true
	}
	if root == uintptr(unsafe.Pointer(&collector)) {
		println("isCollector")
		return true
	}
	if root == uintptr(unsafe.Pointer(&g.allocs)) {
		//println("isPointerSet")
		return true
	}
	if root >= uintptr(unsafe.Pointer(&collector.allocs)) && root <= uintptr(unsafe.Pointer(&collector.GCStats.LiveBytes)) {
		//println("is gc{}")
		return true
	}
	if root == g.allocs.items {
		//println("isPointerSet.items", uint(root), uint(g.allocs.items))
		return true
	}
	//if root == g.sleepQueue {
	//	//println("isSleepQueue")
	//	return true
	//}
	if root == g.runqueue {
		println("isRunqueue")
		return true
	}
	return false
}

// MarkRoot marks a single pointer as a root
//goland:noinspection ALL
func (g *gc) markRoot(root uintptr) {
	//if root == 0 {
	//	return
	//}
	//if g.isReserved(root) {
	//	//println("markRoot isReserved", uint(root))
	//	//return
	//}
	//root = root.Add(-int(gc_ObjectOverhead))
	//root -= gc_ObjectOverhead
	//if root < g.first || root > g.last {
	//	return
	//}
	if g.allocs.Has(root) {
		obj := (*gcObject)(Pointer(root - gc_ObjectOverhead).Unsafe())
		// Mark as gc_BLACK
		//obj.color = gc_BLACK
		println("markRoot", uint(root), "size", obj.rtSize)
		//(*(*gcObject)(unsafe.Pointer(root - gc_ObjectOverhead))).color = gc_BLACK
		//g.markGraph(root)
		g.markRecursive(root, 0)
	}
	//else if g.allocs.Has(root + gc_ObjectOverhead) {
	//	(*(*gcObject)(unsafe.Pointer(root))).color = gc_BLACK
	//	println("!!!!!!!!!")
	//}
}

// MarkRoots scans a block of contiguous memory for root pointers.
//goland:noinspection ALL
func (g *gc) markRoots(start, end uintptr) {
	if gc_TRACE {
		println("MarkRoots", uint(start), uint(end))
	}

	//if end <= start {
	//	return
	//}
	//if start == 0 || end == 0 {
	//	return
	//}

	//if g.isReserved(start) {
	//	println("!!!!!!!!")
	//	(*gcObject)(unsafe.Pointer(start)).rtSize = gc_BLACK
	//	return
	//}

	// Adjust to keep within range GC range
	//println("MarkRoots", uint(start), uint(end))

	// Align start and end pointers.
	//start = (uintptr(start) + unsafe.Alignof(unsafe.Pointer(nil)) - 1) &^ (unsafe.Alignof(unsafe.Pointer(nil)) - 1)
	//end &^= unsafe.Alignof(unsafe.Pointer(nil)) - 1

	// Reduce the end bound to avoid reading too far on platforms where pointer alignment is smaller than pointer size.
	// If the size of the range is 0, then end will be slightly below start after this.
	end -= unsafe.Sizeof(end) - unsafe.Alignof(end)

	// Mark all pointers.
	for ptr := start; ptr < end; ptr += unsafe.Alignof(ptr) {
		p := *(*uintptr)(unsafe.Pointer(ptr))

		//if g.allocs.Has(p) {
		//	// Mark as gc_BLACK
		//	(*(*gcObject)(unsafe.Pointer(p - gc_ObjectOverhead))).color = gc_BLACK
		//}
		g.markRoot(p)
	}
}

//goland:noinspection ALL
func (g *gc) markRecursive(root uintptr, depth int) {
	// Are we too deep?
	if depth > 256 {
		return
	}
	if gc_TRACE {
		println("markRecursive", uint(root), "depth", depth)
	}
	obj := (*gcObject)(unsafe.Pointer(root - gc_ObjectOverhead))
	if obj.color == gc_WHITE {
		println("markRecursive", uint(root), "size", uint(obj.rtSize), "depth", depth)
		obj.color = gc_BLACK
		//if g.isReserved(root) {
		//	//return
		//}

		if gc_TRACE {
			println(uint(root), "color", obj.color, "rtSize", obj.rtSize, "size", uint(obj.rtSize))
		}
		//if uintptr(obj.rtSize)%unsafe.Sizeof(uintptr(0)) != 0 {
		//	return
		//}
		start := root // + gc_ObjectOverhead
		end := start + uintptr(obj.rtSize)

		//start = (start + unsafe.Alignof(unsafe.Pointer(nil)) - 1) &^ (unsafe.Alignof(unsafe.Pointer(nil)) - 1)
		//end &^= unsafe.Alignof(unsafe.Pointer(nil)) - 1

		// Reduce the end bound to avoid reading too far on platforms where pointer alignment is smaller than pointer size.
		// If the size of the range is 0, then end will be slightly below start after this.
		end -= unsafe.Sizeof(end) - unsafe.Alignof(end)

		pointersToCount := (uint(end) - uint(start)) / uint(unsafe.Sizeof(unsafe.Pointer(nil)))
		if pointersToCount > 256 {
			//println("markRecursive -> huge object found", uint(pointersToCount), "pointers to scan")
			//return
		}

		for ptr := start; ptr < end; ptr += unsafe.Alignof(ptr) {
			p := *(*uintptr)(unsafe.Pointer(ptr)) // - gc_ObjectOverhead
			//if p < g.first || p > g.last {
			//	continue
			//}
			if !g.allocs.Has(p) {
				continue
			}
			g.markRecursive(p, depth+1)
		}
	}
}

//goland:noinspection ALL
func (g *gc) markGraph(root uintptr) {
	if !g.allocs.Has(root) {
		println("Not has markGraph", uint(root))
		return
	}
	var (
		obj   = (*gcObject)(unsafe.Pointer(root - gc_ObjectOverhead))
		start = root // + gc_ObjectOverhead
		end   = start + uintptr(obj.rtSize)
	)

	if obj.color == gc_WHITE {
		println("\tWHITE", uint(obj.rtSize))
		return
	} else {
		println("\tBLACK", uint(obj.rtSize))
	}

	//obj.color = gc_BLACK

	// Reduce the end bound to avoid reading too far on platforms where pointer alignment is smaller than pointer size.
	// If the size of the range is 0, then end will be slightly below start after this.
	end -= unsafe.Sizeof(end) - unsafe.Alignof(end)

	// unaligned allocation must be some sort of string or data buffer. skip it.
	//if uintptr(obj.rtSize)%unsafe.Sizeof(uintptr(0)) != 0 {
	//	return
	//}

	pointersToCount := (uint(end) - uint(start)) / uint(unsafe.Sizeof(unsafe.Pointer(nil)))
	if pointersToCount > 256 {
		//println("markGraph -> huge object found", uint(pointersToCount), "pointers to scan")
		//return
	}
	//println("scanning", uint(pointersToCount), "pointers to scan")

	// Mark all pointers.
	for ptr := start; ptr < end; ptr += unsafe.Alignof(ptr) {
		p := *(*uintptr)(unsafe.Pointer(ptr)) // - gc_ObjectOverhead
		//if p < g.first || p > g.last {
		//	continue
		//}
		if !g.allocs.Has(p) {
			continue
		}
		g.markRecursive(p, 0)
	}
}

// New allocates a new GC GCObject
//goland:noinspection ALL
func (g *gc) New(size uintptr) uintptr {
	// Is the size too large?
	if size > uintptr(gc_ObjectMaxSize) {
		panic("allocation too large")
	}
	//println("gc.New", uint(size))

	// Allocate memory
	p := AllocZeroed(gc_ObjectOverhead + size)
	if gc_TRACE {
		println("gc.New AllocZeroed", uint(size), "cap", uint(Sizeof(p)), "ptr", uint(p))
	}

	obj := (*gcObject)(p.Unsafe())
	if obj == nil {
		return 0
	}

	// Add the runtime size and Add to gc_WHITE
	//obj.cap = uint32(c)
	obj.rtSize = uint32(size)
	obj.color = gc_WHITE
	g.LiveBytes += size
	g.TotalBytes += int64(size)
	g.Live++
	g.TotalAllocs++

	// Convert to uint pointer
	ptr := uintptr(unsafe.Pointer(obj)) + gc_ObjectOverhead

	// Add to allocations map
	g.allocs.Add(ptr, 0)

	// Update first pointer if necessary
	if ptr < g.first {
		g.first = ptr
	}
	// Update last pointer if necessary
	if ptr > g.last {
		g.last = ptr
	}

	//ptr += gc_ObjectOverhead
	//println("New", uint(ptr))

	// Return pointer to data
	return ptr
}

// Free will immediately remove the GC GCObject and free up the memory in the allocator.
//goland:noinspection ALL
func (g *gc) Free(ptr uintptr) bool {
	//p := ptr // - gc_ObjectOverhead
	//if !gc.allocs.Has(p) {
	if _, ok := g.allocs.Delete(ptr); !ok {
		return false
	}

	if gc_TRACE {
		println("GC free", uint(ptr))
	}

	obj := (*gcObject)(unsafe.Pointer(ptr - gc_ObjectOverhead))
	size := obj.rtSize
	g.LiveBytes -= uintptr(size)
	g.FreedBytes += int64(size)
	g.Live--
	g.Frees++

	if gc_TRACE {
		println("GC free", uint(uintptr(ptr)), "size", uint(size), "rtSize", obj.rtSize)
	}

	Free(Pointer(unsafe.Pointer(obj)))

	return true
}

func (g *gc) Realloc(ptr uintptr, size uintptr) uintptr {
	if gc_TRACE {
		println("tinygc.Realloc", uint(ptr), "size", uint(size))
	}
	println("tinygc.Realloc", uint(ptr), "size", uint(size))
	if !g.allocs.Has(ptr) {
		return g.New(size)
	}
	//ptr -= gc_ObjectOverhead
	obj := (*gcObject)(Pointer(ptr - gc_ObjectOverhead).Unsafe())
	if obj.rtSize >= uint32(size) {
		if gc_TRACE {
			println("tinygc.Realloc size fits existing", uint(ptr), "existingSize", obj.rtSize, "size", uint(size))
		}
		obj.rtSize = uint32(size)
		return ptr
	}
	newPtr := Realloc(Pointer(ptr-gc_ObjectOverhead), size)
	if uintptr(newPtr) == ptr {
		if gc_TRACE {
			println("tinygc.Realloc nogc.Realloc returned same pointer", uint(ptr), "existingSize", obj.rtSize, "size", uint(size))
		}
		return ptr
	}

	if _, ok := g.allocs.Delete(ptr); ok {
		if gc_TRACE {
			println("tinygc.Realloc freed previous pointer", uint(ptr), "size", uint(size))
		}
		g.LiveBytes -= uintptr(obj.rtSize)
		g.FreedBytes += int64(obj.rtSize)
		g.Live--
		g.Frees++
		Free(Pointer(ptr))
	}

	obj = (*gcObject)(newPtr.Unsafe())
	if obj == nil {
		return 0
	}

	// Add the runtime size and Add to gc_WHITE
	//obj.cap = uint32(c)
	obj.rtSize = uint32(size)
	obj.color = gc_WHITE
	g.LiveBytes += size
	g.TotalBytes += int64(size)
	g.Live++
	g.TotalAllocs++

	// Convert to uint pointer
	ptr = uintptr(newPtr) + gc_ObjectOverhead

	// Add to allocations map
	g.allocs.Add(ptr, 0)

	// Update first pointer if necessary
	if ptr < g.first {
		g.first = ptr
	}
	// Update last pointer if necessary
	if ptr > g.last {
		g.last = ptr
	}

	return ptr
}

//goland:noinspection ALL
func (g *gc) Collect() {
	if gc_TRACE {
		println("GC collect started...")
	}
	var (
		start = time.Now().UnixNano()
		k     uintptr
		obj   *gcObject
		first = ^uintptr(0)
		last  = uintptr(0)
	)
	g.Cycles++

	////////////////////////////////////////////////////////////////////////
	// Mark Roots Phase
	////////////////////////////////////////////////////////////////////////
	markStack()
	//doMarkStack()
	doMarkGlobals()
	//markScheduler()
	// End of mark roots
	end := time.Now().UnixNano()
	markTime := end - start

	////////////////////////////////////////////////////////////////////////
	// Mark Graph Phase
	////////////////////////////////////////////////////////////////////////
	start = end
	g.LastSweep = 0
	g.LastSweepBytes = 0
	var (
		items     = g.allocs.items
		itemsSize = g.allocs.size
		itemsEnd  = items + (itemsSize * unsafe.Sizeof(pointerSetItem{}))
	)
	for ; items < itemsEnd; items += unsafe.Sizeof(pointerSetItem{}) {
		k = *(*uintptr)(unsafe.Pointer(items))
		if k == 0 {
			continue
		}
		obj := (*gcObject)(Pointer(k - gc_ObjectOverhead).Unsafe())
		println("item", uint(k), "size", obj.rtSize, "color", obj.color)
		//g.markGraph(k)
	}

	// End of mark graph
	end = time.Now().UnixNano()
	markGraphTime := end - start

	////////////////////////////////////////////////////////////////////////
	// Sweep Phase
	////////////////////////////////////////////////////////////////////////
	start = markGraphTime + start

	// Reset items iterator
	items = g.allocs.items
	itemsSize = g.allocs.size
	itemsEnd = items + (itemsSize * unsafe.Sizeof(pointerSetItem{}))
	for ; items < itemsEnd; items += unsafe.Sizeof(pointerSetItem{}) {
		// dereference pointer
		k = *(*uintptr)(unsafe.Pointer(items))
		// Empty item?
		if k == 0 {
			continue
		}
		// cast to object
		obj = (*gcObject)(unsafe.Pointer(k - gc_ObjectOverhead))
		// free all gc_WHITE objects
		if obj.color == gc_WHITE {
			g.LiveBytes -= uintptr(obj.rtSize)
			g.LastSweepBytes += int64(obj.rtSize)
			g.Live--
			g.LastSweep++

			if gc_TRACE {
				println("GC sweep", uint(k), "size", uint(obj.rtSize))
			}
			println("GC sweep", uint(k), "size", uint(obj.rtSize))

			//println("GC sweep", uint(uintptr(k)+gc_ObjectOverhead), "size", uint(obj.size()), "rtSize", obj.rtSize)

			// Free memory
			//Free(Pointer(k))

			// Remove from alloc map
			g.allocs.Delete(k)
			//items -= unsafe.Sizeof(pointerSetItem{})
		} else { // turn all gc_BLACK objects into gc_WHITE objects
			//k += gc_ObjectOverhead
			if k < first {
				first = k
			}
			if k > last {
				last = k
			}
			if gc_TRACE {
				//println("GC retained", uint(k), "size", uint(obj.size()))
			}
			obj.color = gc_WHITE
		}
	}

	g.first = first
	g.last = last
	end = time.Now().UnixNano()
	sweepTime := end - start
	g.LastMarkRootsTime = markTime
	g.LastMarkGraphTime = markGraphTime
	g.LastSweepTime = sweepTime
	g.SweepTime += sweepTime
	g.SweepBytes += g.LastSweepBytes
	g.Sweeps += g.LastSweep
	g.LastGCTime = markTime + markGraphTime + sweepTime
	g.TotalTime += g.LastGCTime

	if gc_TRACE {
		println("GC collect finished")
	}
	//stats.Print()
}

//go:build !tinygo && (amd64 || arm64)
// +build !tinygo
// +build amd64 arm64

package tree

/*
#cgo LDFLAGS: -L. -lstdc++
#cgo CXXFLAGS: -std=c++20 -I.
#include <stdlib.h>
#include <pthread.h>
#include "art.h"

//static const struct art_lock_api * moontrade_ordered_lock_api_fair = &moontrade_ordered_lock_fair_api;
//static const struct art_lock_api * art_lock_api = &moontrade_ordered_lock_unfair_api;

typedef struct {
	size_t lock;
	size_t ownership;
	size_t ptr;
	size_t code;
} art_new_t;

void do_art_new(size_t arg0, size_t arg1) {
	art_new_t* args = (art_new_t*)(void*)arg0;
	art_tree* tree = (art_tree*)malloc(sizeof(art_tree));
	if (args->ownership == 1) {
		tree->free = 1;
	}
	args->code = (size_t)art_tree_init(tree);
	if (args->lock > 0) {
		tree->fair = args->lock == 1 ? 1 : 0;
		art_tree_init_lock(tree); // Enable RWSpinLock
	}
	args->ptr = (size_t)(void*)tree;
}

void do_art_destroy(size_t arg0, size_t arg1) {
	art_tree* tree = (art_tree*)(void*)arg0;
	art_tree_destroy(tree);
	free((void*)tree);
}

//typedef struct {
//	size_t tree;
//	size_t size;
//} art_size_t;
//
//void do_art_size(size_t arg0, size_t arg1) {
//	art_size_t* args = (art_size_t*)(void*)arg0;
//	args->size = (size_t)art_size((art_tree*)(void*)args->tree);
//}

typedef struct {
	size_t tree;
	size_t key;
	size_t len;
	art_value data;
	art_value old;
} art_insert_t;

void do_art_insert(size_t arg0, size_t arg1) {
	art_insert_t* args = (art_insert_t*)(void*)arg0;
	args->old = art_insert((art_tree*)(void*)args->tree, (unsigned char*)args->key, (int)args->len, args->data);
}

typedef struct {
	size_t tree;
	size_t key;
	size_t len;
	size_t found;
	art_value data;
	art_value old;
} art_insert_value_t;

void do_art_insert_value(size_t arg0, size_t arg1) {
	art_insert_value_t* args = (art_insert_value_t*)(void*)arg0;
	art_search_result result = art_insert_value((art_tree*)(void*)args->tree, (const unsigned char*)args->key, (int)args->len, args->data);
	args->found = result.found;
	args->old = result.value;
}

void do_art_insert_no_replace(size_t arg0, size_t arg1) {
	art_insert_t* args = (art_insert_t*)(void*)arg0;
	args->old = art_insert_no_replace((art_tree*)(void*)args->tree, (unsigned char*)args->key, (int)args->len, args->data);
}

void do_art_insert_no_replace_value(size_t arg0, size_t arg1) {
	art_insert_value_t* args = (art_insert_value_t*)(void*)arg0;
	art_search_result result = art_insert_no_replace_value((art_tree*)(void*)args->tree, (unsigned char*)args->key, (int)args->len, args->data);
	args->found = result.found;
	args->old = result.value;
}

typedef struct {
	size_t tree;
	size_t key;
	size_t len;
	art_value value;
} art_delete_t;

void do_art_delete(size_t arg0, size_t arg1) {
	art_delete_t* args = (art_delete_t*)(void*)arg0;
	args->value = art_delete((art_tree*)(void*)args->tree, (unsigned char*)args->key, (int)args->len);
}

typedef struct {
	size_t tree;
	size_t key;
	size_t len;
	size_t found;
	art_value value;
} art_delete_value_t;

void do_art_delete_value(size_t arg0, size_t arg1) {
	art_delete_value_t* args = (art_delete_value_t*)(void*)arg0;
	art_search_result result = art_delete_value((art_tree*)(void*)args->tree, (unsigned char*)args->key, (int)args->len);
	args->found = result.found;
	args->value = result.value;
}

typedef struct {
	size_t tree;
	size_t key;
	size_t len;
	size_t found;
	art_value result;
} art_search_t;

void do_art_search(size_t arg0, size_t arg1) {
	art_search_t* args = (art_search_t*)(void*)arg0;
	art_tree* tree = (art_tree*)(void*)args->tree;
	art_search_result result = art_search((art_tree*)(void*)args->tree, (unsigned char*)args->key, (int)args->len);
	args->found = result.found;
	args->result = result.value;
}

typedef struct {
	size_t tree;
	size_t result;
	size_t result2;
} art_minmax_t;

void do_art_minimum(size_t arg0, size_t arg1) {
	art_minmax_t* args = (art_minmax_t*)(void*)arg0;
	args->result = (size_t)art_minimum((art_tree*)(void*)args->tree);
}

void do_art_maximum(size_t arg0, size_t arg1) {
	art_minmax_t* args = (art_minmax_t*)(void*)arg0;
	args->result = (size_t)art_maximum((art_tree*)(void*)args->tree);
}

void do_art_minmax(size_t arg0, size_t arg1) {
	art_minmax_t* args = (art_minmax_t*)(void*)arg0;
	args->result = (size_t)art_minimum((art_tree*)(void*)args->tree);
	args->result2 = (size_t)art_maximum((art_tree*)(void*)args->tree);
}

*/
import "C"
import (
	"github.com/moontrade/nogc"
	"github.com/moontrade/nogc/unsafecgo"
	"unsafe"
)

//// RWLock is a C++ based Read/Write spinlock tuned for performance. It performs slightly better than
//// a Go sync.RWMutex, however both native code and Go code can use it. If staying in Go, use sync.RWMutex.
//// It will lock a Go scheduler thread up so use it intelligently.
//type RWLock struct {
//	ptr uintptr
//}
//
//func NewLock() RWLock {
//	args := struct {
//		result uintptr
//	}{}
//	ptr := uintptr(unsafe.Pointer(&args))
//	unsafecgo.NonBlocking((*byte)(C.do_moontrade_rwlock_new), ptr, 0)
//	return RWLock{ptr: args.result}
//	//return (*RWLock)(unsafe.Pointer(C.moontrade_rwlock_new()))
//}
//
//func Sleep(nanos time.Duration) {
//	C.art_sleep(C.uint64_t(nanos))
//}
//
//func SleepUnsafe(nanos time.Duration) {
//	unsafecgo.NonBlocking((*byte)(C.art_sleep), uintptr(nanos), 0)
//}
//
//func (rw RWLock) Close() error {
//	rw.Free()
//	return nil
//}
//
//func (rw *RWLock) Free() {
//	args := struct {
//		lock uintptr
//	}{
//		lock: uintptr(unsafe.Pointer(rw)),
//	}
//	ptr := uintptr(unsafe.Pointer(&args))
//	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_destroy), ptr, 0)
//	//C.moontrade_rwlock_destroy(unsafe.Pointer(rw))
//}
//
//func (rw RWLock) Lock() {
//	C.moontrade_rwlock_lock(C.size_t(rw.ptr), 0)
//}
//
//func (rw RWLock) LockUnsafe() {
//	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_lock), rw.ptr, 0)
//}
//
//func (rw RWLock) Unlock() {
//	C.moontrade_rwlock_unlock(C.size_t(rw.ptr), 0)
//}
//
//func (rw RWLock) UnlockUnsafe() {
//	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_unlock), rw.ptr, 0)
//}
//
//func (rw RWLock) LockShared() {
//	C.moontrade_rwlock_lock_shared(C.size_t(rw.ptr), 0)
//}
//
//func (rw RWLock) LockSharedUnsafe() {
//	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_lock_shared), rw.ptr, 0)
//}
//
//func (rw RWLock) UnlockShared() {
//	C.moontrade_rwlock_unlock_shared(C.size_t(rw.ptr), 0)
//}
//
//func (rw RWLock) UnlockSharedUnsafe() {
//	unsafecgo.NonBlocking((*byte)(C.moontrade_rwlock_unlock_shared), rw.ptr, 0)
//}

type ART C.art_tree

//func (art *ART) Lock() *RWLock {
//	tree := (*C.art_tree)(unsafe.Pointer(art))
//	return (*RWLock)(nogc.Pointer(tree.lock).Unsafe())
//}

func (art *ART) Size() int64 {
	return int64((*C.art_tree)(unsafe.Pointer(art)).size)
}

func (art *ART) Memory() int64 {
	return int64((*C.art_tree)(unsafe.Pointer(art)).memory)
}

type Leaf C.art_leaf

func (l *Leaf) Data() nogc.Pointer {
	return *(*nogc.Pointer)(unsafe.Pointer(l))
}
func (l *Leaf) Key() nogc.FatPointer {
	return nogc.FatPointerOf(
		nogc.Pointer(uintptr(unsafe.Pointer(l))+unsafe.Sizeof(uintptr(0))+4),
		uintptr(*(*uint32)(unsafe.Pointer(uintptr(unsafe.Pointer(l)) + unsafe.Sizeof(uintptr(0))))))
}

type LockKind uintptr

const (
	LockKindNone   LockKind = 0
	LockKindFair   LockKind = 1
	LockKindUnfair LockKind = 2
)

type Ownership uintptr

const (
	OwnershipNotOwned Ownership = 0
	OwnershipOwned    Ownership = 1
)

func NewART(lock LockKind, ownership Ownership) (*ART, int) {
	args := struct {
		lock      uintptr
		ownership uintptr
		ptr       uintptr
		code      uintptr
	}{
		lock:      uintptr(lock),
		ownership: uintptr(ownership),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_new), ptr, 0)
	return (*ART)(nogc.Pointer(args.ptr).Unsafe()), int(args.code)
}

func (art *ART) Close() error {
	art.Free()
	return nil
}

func (art *ART) Free() {
	ptr := uintptr(unsafe.Pointer(art))
	unsafecgo.NonBlocking((*byte)(C.do_art_destroy), ptr, 0)
}

//type artSizeT struct {
//	ptr  uintptr
//	size uintptr
//}
//
//func (r *ART) Size() int {
//	args := artSizeT{ptr: uintptr(unsafe.Pointer(r))}
//	ptr := uintptr(unsafe.Pointer(&args))
//	unsafecgo.NonBlocking((*byte)(C.do_art_size), ptr, 0)
//	return int(args.size)
//}

//func (t *ART) Size() int {
//	return int(*(*uintptr)(unsafe.Pointer(uintptr(unsafe.Pointer(t)) + unsafe.Sizeof(uintptr(0)))))
//}

type Value struct {
	Data uint64
}

func (art *ART) Put(key nogc.FatPointer, value nogc.Pointer) nogc.Pointer {
	args := struct {
		tree  uintptr
		key   uintptr
		len   uintptr
		value Value
		old   Value
	}{
		tree:  uintptr(unsafe.Pointer(art)),
		key:   uintptr(key.Pointer),
		len:   key.Len(),
		value: Value{Data: uint64(value)},
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_insert), ptr, 0)
	return nogc.Pointer(args.old.Data)
}

func (art *ART) PutValue(key nogc.FatPointer, value uint64) (uint64, bool) {
	/*
		typedef struct {
			size_t tree;
			size_t key;
			size_t len;
			size_t found;
			art_value data;
			art_value old;
		} art_insert_value_t;
	*/
	args := struct {
		tree  uintptr
		key   uintptr
		len   uintptr
		found uintptr
		value Value
		old   Value
	}{
		tree:  uintptr(unsafe.Pointer(art)),
		key:   uintptr(key.Pointer),
		len:   key.Len(),
		value: Value{Data: value},
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_insert_value), ptr, 0)
	if args.found == 0 {
		return 0, false
	}
	return args.old.Data, true
}

func (art *ART) PutNoReplace(key nogc.FatPointer, value nogc.Pointer) nogc.Pointer {
	args := struct {
		tree  uintptr
		key   uintptr
		len   uintptr
		value Value
		old   Value
	}{
		tree:  uintptr(unsafe.Pointer(art)),
		key:   uintptr(key.Pointer),
		len:   key.Len(),
		value: Value{Data: uint64(value)},
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_insert_no_replace), ptr, 0)
	return nogc.Pointer(args.old.Data)
}

func (art *ART) PutNoReplaceValue(key nogc.FatPointer, value uint64) (uint64, bool) {
	args := struct {
		tree  uintptr
		key   uintptr
		len   uintptr
		found uintptr
		value Value
		old   Value
	}{
		tree:  uintptr(unsafe.Pointer(art)),
		key:   uintptr(key.Pointer),
		len:   key.Len(),
		value: Value{Data: value},
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_insert_no_replace_value), ptr, 0)
	if args.found == 0 {
		return 0, false
	}
	return args.old.Data, true
}

func (art *ART) Delete(key nogc.FatPointer) nogc.Pointer {
	args := struct {
		tree uintptr
		key  uintptr
		len  uintptr
		item Value
	}{
		tree: uintptr(unsafe.Pointer(art)),
		key:  uintptr(key.Pointer),
		len:  key.Len(),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_delete), ptr, 0)
	return nogc.Pointer(args.item.Data)
}

func (art *ART) DeleteValue(key nogc.FatPointer) (uint64, bool) {
	args := struct {
		tree  uintptr
		key   uintptr
		len   uintptr
		found uintptr
		item  Value
	}{
		tree: uintptr(unsafe.Pointer(art)),
		key:  uintptr(key.Pointer),
		len:  key.Len(),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_delete_value), ptr, 0)
	if args.found == 0 {
		return 0, false
	}
	return args.item.Data, true
}

func (art *ART) Get(key nogc.FatPointer) (nogc.Pointer, bool) {
	args := struct {
		tree   uintptr
		s      uintptr
		len    uintptr
		found  uintptr
		result Value
	}{
		tree: uintptr(unsafe.Pointer(art)),
		s:    uintptr(key.Pointer),
		len:  key.Len(),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_search), ptr, 0)
	if args.found == 0 {
		return 0, false
	}
	return nogc.Pointer(args.result.Data), true
}

func (art *ART) GetValue(key nogc.FatPointer) (uint64, bool) {
	args := struct {
		tree   uintptr
		s      uintptr
		len    uintptr
		found  uintptr
		result Value
	}{
		tree: uintptr(unsafe.Pointer(art)),
		s:    uintptr(key.Pointer),
		len:  key.Len(),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_search), ptr, 0)
	if args.found == 0 {
		return 0, false
	}
	return args.result.Data, true
}

func (art *ART) Minimum() *Leaf {
	args := struct {
		tree    uintptr
		result  uintptr
		result2 uintptr
	}{
		tree: uintptr(unsafe.Pointer(art)),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_minimum), ptr, 0)
	return (*Leaf)(nogc.Pointer(args.result).Unsafe())
}

// Maximum Returns the maximum valued leaf
// @return The maximum leaf or NULL
func (art *ART) Maximum() *Leaf {
	args := struct {
		tree    uintptr
		result  uintptr
		result2 uintptr
	}{
		tree: uintptr(unsafe.Pointer(art)),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_maximum), ptr, 0)
	return (*Leaf)(nogc.Pointer(args.result).Unsafe())
}

// MinMax Returns the minimum and maximum valued leaf
// @return The minimum and maximum leaf or NULL, NULL
func (art *ART) MinMax() (*Leaf, *Leaf) {
	args := struct {
		tree    uintptr
		result  uintptr
		result2 uintptr
	}{
		tree: uintptr(unsafe.Pointer(art)),
	}
	ptr := uintptr(unsafe.Pointer(&args))
	unsafecgo.NonBlocking((*byte)(C.do_art_minmax), ptr, 0)
	return (*Leaf)(nogc.Pointer(args.result).Unsafe()), (*Leaf)(nogc.Pointer(args.result2).Unsafe())
}

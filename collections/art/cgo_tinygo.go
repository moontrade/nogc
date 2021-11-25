//go:build tinygo && (darwin || linux || unix) && !tinygo.wasm
// +build tinygo
// +build darwin linux unix
// +build !tinygo.wasm

package art

/*
#include "art.h"
#include <stdlib.h>
*/
import "C"
import (
	"github.com/moontrade/nogc"
	"unsafe"
)

type Tree C.art_tree

type Leaf C.art_leaf

func (l *Leaf) Data() nogc.Pointer {
	return *(*nogc.Pointer)(unsafe.Pointer(l))
}
func (l *Leaf) Key() nogc.FatPointer {
	return nogc.FatPointerOf(
		nogc.Pointer(uintptr(unsafe.Pointer(l))+unsafe.Sizeof(uintptr(0))+4),
		uintptr(*(*uint32)(unsafe.Pointer(uintptr(unsafe.Pointer(l)) + unsafe.Sizeof(uintptr(0))))))
}

//go:nosplit
//go:noescape
func New() (*Tree, int) {
	tree := C.calloc(1, C.ulong(unsafe.Sizeof(C.art_tree{})))
	return (*Tree)(tree), int(C.art_tree_init((*C.art_tree)(tree)))
}

//go:nosplit
//go:noescape
func (t *Tree) Free() {
	C.art_tree_destroy((*C.art_tree)(t))
}

func (t *Tree) Size() int {
	return int(*(*uintptr)(unsafe.Pointer(uintptr(unsafe.Pointer(t)) + unsafe.Sizeof(uintptr(0)))))
}

type _string struct {
	Data, Len uintptr
}

type _bytes struct {
	Data, Len, Cap uintptr
}

//go:nosplit
//go:noescape
func (t *Tree) Insert(key nogc.Pointer, size int, value nogc.Pointer) nogc.Pointer {
	return nogc.Pointer(C.art_insert((*C.art_tree)(t), (*C.uchar)(unsafe.Pointer(key)), C.int(size), unsafe.Pointer(value)))
}

func (t *Tree) InsertBytes(key nogc.Bytes, value nogc.Pointer) nogc.Pointer {
	return t.Insert(key.Pointer, key.Len(), value)
}

func (t *Tree) InsertString(key string, value nogc.Pointer) nogc.Pointer {
	k := (*_string)(unsafe.Pointer(&key))
	return t.Insert(nogc.Pointer(k.Data), int(k.Len), value)
}

func (t *Tree) InsertSlice(key []byte, value nogc.Pointer) nogc.Pointer {
	k := (*_bytes)(unsafe.Pointer(&key))
	return t.Insert(nogc.Pointer(k.Data), int(k.Len), value)
}

//go:nosplit
//go:noescape
func (t *Tree) InsertNoReplace(key nogc.Pointer, size int, value nogc.Pointer) nogc.Pointer {
	return nogc.Pointer(C.art_insert_no_replace((*C.art_tree)(t), (*C.uchar)(unsafe.Pointer(key)), C.int(size), unsafe.Pointer(value)))
}

func (t *Tree) InsertNoReplaceBytes(key nogc.Bytes, value nogc.Pointer) nogc.Pointer {
	return t.InsertNoReplace(key.Pointer, key.Len(), value)
}

func (t *Tree) InsertNoReplaceString(key string, value nogc.Pointer) nogc.Pointer {
	k := (*_string)(unsafe.Pointer(&key))
	return t.InsertNoReplace(nogc.Pointer(k.Data), int(k.Len), value)
}

func (t *Tree) InsertNoReplaceSlice(key []byte, value nogc.Pointer) nogc.Pointer {
	k := (*_bytes)(unsafe.Pointer(&key))
	return t.InsertNoReplace(nogc.Pointer(k.Data), int(k.Len), value)
}

//go:nosplit
//go:noescape
func (t *Tree) Delete(key nogc.Pointer, size int) nogc.Pointer {
	return nogc.Pointer(C.art_delete((*C.art_tree)(t), (*C.uchar)(unsafe.Pointer(key)), C.int(size)))
}

func (t *Tree) DeleteBytes(key nogc.Bytes) nogc.Pointer {
	return t.Delete(key.Pointer, key.Len())
}

//go:nosplit
//go:noescape
func (t *Tree) Find(key nogc.Pointer, size int) nogc.Pointer {
	return nogc.Pointer(C.art_search((*C.art_tree)(t), (*C.uchar)(unsafe.Pointer(key)), C.int(size)))
}

func (t *Tree) FindBytes(key nogc.Bytes) nogc.Pointer {
	return t.Find(key.Pointer, key.Len())
}

//go:nosplit
//go:noescape
func (t *Tree) Minimum() nogc.Pointer {
	return nogc.Pointer(unsafe.Pointer(C.art_minimum((*C.art_tree)(t))))
}

//go:nosplit
//go:noescape
func (t *Tree) Maximum() nogc.Pointer {
	return nogc.Pointer(unsafe.Pointer(C.art_maximum((*C.art_tree)(t))))
}

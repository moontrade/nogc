//go:build generics

package tree

import "C"
import (
	"github.com/moontrade/nogc"
	"unsafe"
)

//////////////////////////////////////////////////////////////////////////////////////////
// Pointer -> Pointer
//////////////////////////////////////////////////////////////////////////////////////////

type ARTPointerToPointer[K any, V any] struct {
	art    *ART
	toFP   func(key *K) nogc.FatPointer
	fromFP func(key nogc.FatPointer) K
}

func NewARTPointerToPointer[K any, V any](
	toFP func(key *K) nogc.FatPointer,
	fromFP func(key nogc.FatPointer) K,
	lock LockKind, ownership Ownership, calcMemory bool,
) ARTPointerToPointer[K, V] {
	t, _ := NewART(lock, ownership, calcMemory)
	return ARTPointerToPointer[K, V]{
		art:    t,
		toFP:   toFP,
		fromFP: fromFP,
	}
}

func (g *ARTPointerToPointer[K, V]) Size() int64 {
	return g.art.Size()
}

func (g *ARTPointerToPointer[K, V]) Memory() int64 {
	return g.art.Memory()
}

func (g *ARTPointerToPointer[K, V]) Free() {
	if g.art == nil {
		return
	}
	_ = g.art.Close()
	g.art = nil
}

func (g *ARTPointerToPointer[K, V]) Close() error {
	g.Free()
	return nil
}

func (g *ARTPointerToPointer[K, V]) Get(key K) (nogc.Dangling[V], bool) {
	fp := g.toFP(&key)
	p, found := g.art.Get(fp)
	if !found {
		return nogc.DanglingOf[V](0), false
	}
	return nogc.DanglingOf[V](p), true
}

func (g *ARTPointerToPointer[K, V]) Put(key K, value nogc.PointerOf[V]) (nogc.PointerOf[V], bool) {
	fp := g.toFP(&key)
	p, found := g.art.PutValue(fp, uint64(value.Pointer()))
	if !found {
		return nogc.PointerToOf[V](0), false
	}
	return nogc.PointerToOf[V](nogc.Pointer(p)), true
}

func (g *ARTPointerToPointer[K, V]) PutNoReplace(key K, value nogc.PointerOf[V]) (nogc.Dangling[V], bool) {
	fp := g.toFP(&key)
	p, found := g.art.PutNoReplaceValue(fp, uint64(value.Pointer()))
	if !found {
		return nogc.DanglingOf[V](0), false
	}
	return nogc.DanglingOf[V](nogc.Pointer(p)), true
}

func (g *ARTPointerToPointer[K, V]) SetReplaceAndFree(key K, value nogc.PointerOf[V]) bool {
	fp := g.toFP(&key)
	p := g.art.Put(fp, value.Pointer())
	if p == 0 {
		return false
	}
	p.Free()
	return true
}

func (g *ARTPointerToPointer[K, V]) Delete(key K) (nogc.PointerOf[V], bool) {
	fp := g.toFP(&key)
	p, found := g.art.DeleteValue(fp)
	if !found {
		return nogc.PointerToOf[V](0), false
	}
	return nogc.PointerToOf[V](nogc.Pointer(p)), true
}

func (g *ARTPointerToPointer[K, V]) DeleteAndFree(key K) bool {
	fp := g.toFP(&key)
	p := g.art.Delete(fp)
	if p == 0 {
		return false
	}
	nogc.Free(p)
	return true
}

// ValueType is any type that fits in 64bits
type ValueType interface {
	~int | ~int8 | ~int16 | ~int32 | ~int64 |
		~uint | ~uint8 | ~uint16 | ~uint32 | ~uint64 | ~uintptr |
		~float32 | ~float64 |
		~struct{ nogc.Pointer } | ~unsafe.Pointer |
		~struct{ int8 } | ~struct{ int16 } | ~struct{ int32 } | ~struct{ int64 } |
		~struct{ byte } | ~struct{ uint8 } | ~struct{ uint16 } | ~struct{ uint32 } | ~struct{ uint64 } |
		~struct{ uintptr } | ~struct{ float32 } | ~struct{ float64 } |
		~[1]byte | ~[2]byte | ~[3]byte | ~[4]byte | ~[5]byte | ~[6]byte | ~[7]byte | ~[8]byte |
		~struct{ v [1]byte } | ~struct{ v [2]byte } | ~struct{ v [3]byte } | ~struct{ v [4]byte } |
		~struct{ v [5]byte } | ~struct{ v [6]byte } | ~struct{ v [7]byte } | ~struct{ v [8]byte }
}

func prepareKey[K ValueType](key K, to *uint64) {
	*(*K)(unsafe.Pointer(to)) = key
	*to = toBE(*to)
}

//////////////////////////////////////////////////////////////////////////////////////////
// ValueType -> Pointer
//////////////////////////////////////////////////////////////////////////////////////////

type ARTValueToPointer[K ValueType, V any] struct {
	art *ART
}

func (g *ARTValueToPointer[K, V]) Size() int64 {
	return g.art.Size()
}

func (g *ARTValueToPointer[K, V]) Memory() int64 {
	return g.art.Memory()
}

func NewARTValueToPointer[K ValueType, V any](lock LockKind, ownership Ownership, calcMemory bool) ARTValueToPointer[K, V] {
	t, _ := NewART(lock, ownership, calcMemory)
	return ARTValueToPointer[K, V]{art: t}
}

func (g *ARTValueToPointer[K, V]) Free() {
	if g.art == nil {
		return
	}
	_ = g.art.Close()
	g.art = nil
}

func (g *ARTValueToPointer[K, V]) Close() error {
	g.Free()
	return nil
}

func (g *ARTValueToPointer[K, V]) Get(key K) (nogc.Dangling[V], bool) {
	var k uint64
	*(*K)(unsafe.Pointer(&k)) = key
	k = toBE(k)
	fp := nogc.FatPointerOfUInt64(&k)
	p, found := g.art.Get(fp)
	if !found {
		return nogc.DanglingOf[V](0), false
	}
	return nogc.DanglingOf[V](p), true
}

func (g *ARTValueToPointer[K, V]) Put(key K, value nogc.PointerOf[V]) (nogc.PointerOf[V], bool) {
	var k uint64
	*(*K)(unsafe.Pointer(&k)) = key
	k = toBE(k)
	fp := nogc.FatPointerOfUInt64(&k)
	p, found := g.art.PutValue(fp, uint64(value.Pointer()))
	if !found {
		return nogc.PointerToOf[V](0), false
	}
	return nogc.PointerToOf[V](nogc.Pointer(p)), true
}

func (g *ARTValueToPointer[K, V]) PutNoReplace(key K, value nogc.PointerOf[V]) (nogc.PointerOf[V], bool) {
	var k uint64
	*(*K)(unsafe.Pointer(&k)) = key
	k = toBE(k)
	fp := nogc.FatPointerOfUInt64(&k)
	p, found := g.art.PutNoReplaceValue(fp, uint64(value.Pointer()))
	if !found {
		return nogc.PointerToOf[V](0), false
	}
	return nogc.PointerToOf[V](nogc.Pointer(p)), true
}

func (g *ARTValueToPointer[K, V]) Delete(key K) (nogc.PointerOf[V], bool) {
	var k uint64
	*(*K)(unsafe.Pointer(&k)) = key
	k = toBE(k)
	fp := nogc.FatPointerOfUInt64(&k)
	p, found := g.art.DeleteValue(fp)
	if !found {
		return nogc.PointerToOf[V](0), false
	}
	return nogc.PointerToOf[V](nogc.Pointer(p)), true
}

func (g *ARTValueToPointer[K, V]) DeleteAndFree(key K) bool {
	var k uint64
	*(*K)(unsafe.Pointer(&k)) = key
	k = toBE(k)
	fp := nogc.FatPointerOfUInt64(&k)
	p := g.art.Delete(fp)
	if p == 0 {
		return false
	}
	nogc.Free(p)
	return true
}

//////////////////////////////////////////////////////////////////////////////////////////
// ValueType -> ValueType
//////////////////////////////////////////////////////////////////////////////////////////

type ARTValueToValue[K ValueType, V ValueType] struct {
	art *ART
}

func SizeofSizeT() int {
	return int(unsafe.Sizeof(C.size_t(0)))
}

func NewARTValueToValue[K ValueType, V ValueType](lock LockKind, calcMemory bool) ARTValueToValue[K, V] {
	t, _ := NewART(lock, OwnershipNotOwned, calcMemory)
	return ARTValueToValue[K, V]{art: t}
}

func (g *ARTValueToValue[K, V]) Size() int64 {
	return g.art.Size()
}

func (g *ARTValueToValue[K, V]) Memory() int64 {
	return g.art.Memory()
}

func (g *ARTValueToValue[K, V]) Free() {
	if g.art == nil {
		return
	}
	_ = g.art.Close()
	g.art = nil
}

func (g *ARTValueToValue[K, V]) Close() error {
	_ = g.art.Close()
	return nil
}

func (g *ARTValueToValue[K, V]) Get(key K) (V, bool) {
	var k uint64
	*(*K)(unsafe.Pointer(&k)) = key
	k = toBE(k)
	fp := nogc.FatPointerOfUInt64(&k)
	p, found := g.art.GetValue(fp)
	if !found {
		var v V
		return v, false
	}
	return *(*V)(unsafe.Pointer(&p)), true
}

func (g *ARTValueToValue[K, V]) Put(key K, value V) (V, bool) {
	var k uint64
	*(*K)(unsafe.Pointer(&k)) = key
	k = toBE(k)
	fp := nogc.FatPointerOfUInt64(&k)
	var v uint64
	*(*V)(unsafe.Pointer(&v)) = value
	p, found := g.art.PutValue(fp, v)
	if !found {
		var v V
		return v, false
	}
	return *(*V)(unsafe.Pointer(&p)), true
}

func (g *ARTValueToValue[K, V]) PutNoReplace(key K, value V) (V, bool) {
	var k uint64
	*(*K)(unsafe.Pointer(&k)) = key
	k = toBE(k)
	fp := nogc.FatPointerOfUInt64(&k)
	var v uint64
	*(*V)(unsafe.Pointer(&v)) = value
	p, found := g.art.PutNoReplaceValue(fp, v)
	if !found {
		var v V
		return v, false
	}
	return *(*V)(unsafe.Pointer(&p)), true
}

//////////////////////////////////////////////////////////////////////////////////////////
// Pointer -> ValueType
//////////////////////////////////////////////////////////////////////////////////////////

type ARTPointerToValue[K any, V ValueType] struct {
	art    *ART
	toFP   func(key *K) nogc.FatPointer
	fromFP func(key nogc.FatPointer) K
}

func NewARTPointerToValue[K any, V ValueType](
	toFP func(key *K) nogc.FatPointer,
	fromFP func(key nogc.FatPointer) K,
	lock LockKind,
	calcMemory bool,
) ARTPointerToValue[K, V] {
	t, _ := NewART(lock, OwnershipNotOwned, calcMemory)
	return ARTPointerToValue[K, V]{
		art:    t,
		toFP:   toFP,
		fromFP: fromFP,
	}
}

func (g *ARTPointerToValue[K, V]) Size() int64 {
	return g.art.Size()
}

func (g *ARTPointerToValue[K, V]) Memory() int64 {
	return g.art.Memory()
}

func (g *ARTPointerToValue[K, V]) Free() {
	if g.art == nil {
		return
	}
	_ = g.art.Close()
	g.art = nil
}

func (g *ARTPointerToValue[K, V]) Close() error {
	g.Free()
	return nil
}

func (g *ARTPointerToValue[K, V]) Get(key K) (V, bool) {
	fp := g.toFP(&key)
	p, found := g.art.GetValue(fp)
	if !found {
		var v V
		return v, false
	}
	return *(*V)(unsafe.Pointer(&p)), true
}

func (g *ARTPointerToValue[K, V]) Put(key K, value V) (V, bool) {
	fp := g.toFP(&key)
	var vv uint64
	*(*V)(unsafe.Pointer(&vv)) = value
	p, found := g.art.PutValue(fp, vv)
	if !found {
		var v V
		return v, false
	}
	return *(*V)(unsafe.Pointer(&p)), true
}

func (g *ARTPointerToValue[K, V]) PutNoReplace(key K, value V) (V, bool) {
	fp := g.toFP(&key)
	var vv uint64
	*(*V)(unsafe.Pointer(&vv)) = value
	p, found := g.art.PutNoReplaceValue(fp, vv)
	if !found {
		var v V
		return v, false
	}
	return *(*V)(unsafe.Pointer(&p)), true
}

func (g *ARTPointerToValue[K, V]) Delete(key K, value V) (V, bool) {
	fp := g.toFP(&key)
	var vv nogc.Pointer
	*(*V)(unsafe.Pointer(&vv)) = value
	p, found := g.art.DeleteValue(fp)
	if !found {
		var v V
		return v, false
	}
	return *(*V)(unsafe.Pointer(&p)), true
}

func fpToString(fp nogc.FatPointer) string {
	return fp.String()
}
func fpToByteSlice(fp nogc.FatPointer) []byte {
	return fp.Bytes()
}

func NewARTStringToPointer[V any](lock LockKind, ownership Ownership, calcMemory bool) ARTPointerToPointer[string, V] {
	return NewARTPointerToPointer[string, V](
		nogc.FatPointerOfStringRef,
		fpToString,
		lock, ownership, calcMemory)
}

func NewARTStringToValue[V ValueType](lock LockKind, calcMemory bool) ARTPointerToValue[string, V] {
	return NewARTPointerToValue[string, V](
		nogc.FatPointerOfStringRef,
		fpToString,
		lock, calcMemory)
}

func NewARTByteSliceToPointer[V any](lock LockKind, ownership Ownership, calcMemory bool) ARTPointerToPointer[[]byte, V] {
	return NewARTPointerToPointer[[]byte, V](
		nogc.FatPointerOfBytesRef,
		fpToByteSlice,
		lock, ownership, calcMemory)
}

func NewARTByteSliceToValue[V ValueType](lock LockKind, calcMemory bool) ARTPointerToValue[[]byte, V] {
	return NewARTPointerToValue[[]byte, V](
		nogc.FatPointerOfBytesRef,
		fpToByteSlice,
		lock, calcMemory)
}

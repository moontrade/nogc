//go:build generics

package tree

import (
	"fmt"
	"github.com/moontrade/nogc"
	"math/bits"
	"sync/atomic"
	"testing"
	"unsafe"
)

type Bar struct {
	ID int32
}

func TestGeneric_Get(t *testing.T) {
	generic := NewARTValueToPointer[int64, Bar](LockKindFair, OwnershipOwned)
	generic.Put(10, nogc.AllocOf(Bar{ID: 10}))
	v, found := generic.Get(10)
	_ = found
	var vv *Bar = v.Unwrap()
	println(vv)

	g1 := NewARTValueToValue[int64, nogc.Pointer](LockKindNone)
	_ = g1

	g2 := NewARTPointerToPointer[int64, Bar]
	_ = g2

	g3 := NewARTValueToValue[int64, int64](LockKindNone)
	_ = g3

	g4 := NewARTValueToPointer[int64, Bar](LockKindNone, OwnershipNotOwned)
	_ = g4
}

func TestAtomicUintptrDecrement(t *testing.T) {
	x := uintptr(10)
	atomic.AddUintptr(&x, ^uintptr(0))
	atomic.AddUintptr(&x, ^uintptr(0))
	fmt.Println(atomic.LoadUintptr(&x))
}

func BenchmarkAllocOf(b *testing.B) {
	b.Run("AllocOf Manual", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			a := nogc.Alloc(unsafe.Sizeof(Bar{}))
			*(*Bar)(a.Unsafe()) = Bar{}
			a.Free()
		}
	})

	b.Run("AllocOf", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			a := nogc.AllocOf(Bar{})
			a.Free()
		}
	})
}

func BenchmarkARTValueToValue_Get(b *testing.B) {
	b.Run("Not ThreadSafe or Generic", func(b *testing.B) {
		g3, _ := NewART(LockKindNone, OwnershipNotOwned)
		defer g3.Free()

		for i := 0; i < b.N; i++ {
			ii := bits.Reverse64(uint64(i))
			g3.PutValue(nogc.FatPointerOfUInt64(&ii), ii)
		}

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			ii := bits.Reverse64(uint64(i))
			_, _ = g3.Get(nogc.FatPointerOfUInt64(&ii))
		}
		b.StopTimer()
	})

	b.Run("Not ThreadSafe", func(b *testing.B) {
		g3 := NewARTValueToValue[int, int](LockKindNone)
		defer g3.Free()

		for i := 0; i < b.N; i++ {
			g3.Put(i, i)
		}

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			_, _ = g3.Get(i)
		}
		b.StopTimer()
	})

	b.Run("ThreadSafe Unfair", func(b *testing.B) {
		g3 := NewARTValueToValue[int, int](LockKindUnfair)
		defer g3.Free()

		for i := 0; i < b.N; i++ {
			g3.Put(i, i)
		}

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			_, _ = g3.Get(i)
		}
		b.StopTimer()
	})

	b.Run("ThreadSafe Fair", func(b *testing.B) {
		g3 := NewARTValueToValue[int, int](LockKindFair)
		defer g3.Free()

		for i := 0; i < b.N; i++ {
			g3.Put(i, i)
		}

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			_, _ = g3.Get(i)
		}
		b.StopTimer()
	})

	b.Run("Go Map Not ThreadSafe", func(b *testing.B) {
		m := make(map[int]int)

		for i := 0; i < b.N; i++ {
			m[i] = i
		}

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			_, _ = m[i]
		}
		b.StopTimer()
	})
}

func BenchmarkARTValueToValue_Put(b *testing.B) {
	b.Run("Not ThreadSafe", func(b *testing.B) {
		g3 := NewARTValueToValue[int, int](LockKindNone)
		defer g3.Free()

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			g3.Put(i, i)
		}
		b.StopTimer()
	})

	b.Run("ThreadSafe Unfair", func(b *testing.B) {
		g3 := NewARTValueToValue[int, int](LockKindUnfair)
		defer g3.Free()

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			g3.Put(i, i)
		}
		b.StopTimer()
	})

	b.Run("ThreadSafe Fair", func(b *testing.B) {
		g3 := NewARTValueToValue[int, int](LockKindFair)
		defer g3.Free()

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			g3.Put(i, i)
		}
		b.StopTimer()
	})

	b.Run("Go Map Not ThreadSafe", func(b *testing.B) {
		m := make(map[int]int)

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			m[i] = i
		}
		b.StopTimer()
	})
}

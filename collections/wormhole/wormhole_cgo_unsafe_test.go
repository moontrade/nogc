package wormhole

import (
	"fmt"
	"github.com/moontrade/nogc"
	"sync"
	"sync/atomic"
	"testing"
	"unsafe"
)

func TestNewQSBR(t *testing.T) {
	q := NewQSBR()
	println(q)

	go func() {
		var ref QSBRRef
		_ = q.Register(&ref)
		q.Park(&ref)
	}()

	go func() {
		var ref QSBRRef
		_ = q.Register(&ref)
		q.Park(&ref)
		q.Resume(&ref)
		q.Wait(1)
	}()

	var r1 QSBRRef
	fmt.Println(r1)

	success := q.Register(&r1)
	q.Park(&r1)
	fmt.Println("Register:", success)

	q.Resume(&r1)
	q.Park(&r1)

	fmt.Println(r1)

	_ = q.Close()
	println(unsafe.Sizeof(QSBRRef{}))
}

func TestNewWormhole(t *testing.T) {
	wh := NewWormhole()
	ref := wh.Ref()
	println(ref)

	var k int64 = 100
	var key = nogc.FatPointerOfInt64(&k)

	wh.Put(ref, key, key)

	var val int64 = 0
	var value = nogc.FatPointerOfInt64(&val)

	wh.Get(ref, key, value)

	fmt.Println(val)
}

func BenchmarkQSBR_Park(b *testing.B) {
	b.Run("QSBR", func(b *testing.B) {
		q := NewQSBR()
		var ref QSBRRef
		_ = q.Register(&ref)
		q.Park(&ref)

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			q.Resume(&ref)
			q.Park(&ref)
		}
	})

	b.Run("Go RWMutex.RLock", func(b *testing.B) {
		var m sync.RWMutex

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			m.RLock()
			m.RUnlock()
		}
	})

	b.Run("Go RWMutex.Lock", func(b *testing.B) {
		var m sync.RWMutex

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			m.Lock()
			m.Unlock()
		}
	})

	b.Run("Go Atomic", func(b *testing.B) {
		var l int64

		b.ReportAllocs()
		b.ResetTimer()
		for i := 0; i < b.N; i++ {
			atomic.AddInt64(&l, 1)
			atomic.AddInt64(&l, -1)
		}
	})
}

func BenchmarkWormhole_Put(b *testing.B) {
	wh := NewWormhole()
	ref := wh.Ref()

	b.ReportAllocs()
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		var k = int64(i)
		var key = nogc.FatPointerOfInt64(&k)

		wh.Put(ref, key, key)
	}
}

func BenchmarkWormhole_Get(b *testing.B) {
	wh := NewWormhole()
	ref := wh.Ref()

	for i := 0; i < b.N; i++ {
		var k = int64(i)
		var key = nogc.FatPointerOfInt64(&k)

		wh.Put(ref, key, key)
	}

	var k = int64(0)
	var key = nogc.FatPointerOfInt64(&k)

	var val int64 = 0
	var value = nogc.FatPointerOfInt64(&val)

	b.ReportAllocs()
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		k = int64(i)
		wh.Get(ref, key, value)
	}
}

func BenchmarkUnsafe_Put(b *testing.B) {
	wh := NewUnsafe()

	b.ReportAllocs()
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		var k = int64(i)
		var key = nogc.FatPointerOfInt64(&k)

		wh.Put(key, key)
	}
}

func BenchmarkUnsafe_Get(b *testing.B) {
	wh := NewUnsafe()

	for i := 0; i < b.N; i++ {
		var k = int64(i)
		var key = nogc.FatPointerOfInt64(&k)

		wh.Put(key, key)
	}

	var k = int64(0)
	var key = nogc.FatPointerOfInt64(&k)

	b.ReportAllocs()
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		k = int64(i)
		value := wh.Get(key)
		_ = value
	}
}

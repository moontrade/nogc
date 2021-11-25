package art

import (
	"github.com/moontrade/nogc"
	"strconv"
	"testing"
	"unsafe"
)

func TestNew(t *testing.T) {
	println("sizeof Leaf", unsafe.Sizeof(Leaf{}))
	art, _ := New()
	art.InsertBytes(nogc.WrapString("hello"), 1000)
	art.InsertBytes(nogc.WrapString("below"), 5000)
	art.InsertString("hello01", 8700)
	found := art.FindBytes(nogc.WrapString("hello"))
	println("found", uint(found))
	println("size", art.Size())
	min := art.Minimum()
	println("min", uint(min.Data()), "key", min.Key().String())
	max := art.Maximum()
	println("max", uint(max.Data()), "key", max.Key().String())
	art.Free()
}

func BenchmarkTree_Insert(b *testing.B) {
	b.Run("insert int32BE", func(b *testing.B) {
		tree, _ := New()
		key := nogc.AllocBytes(4)

		//println(tree.String())
		b.ResetTimer()
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			key.SetInt32BE(0, int32(i))
			tree.InsertBytes(key, 0)
		}
		b.StopTimer()
		tree.Free()
		key.Free()
	})
	b.Run("insert int32LE", func(b *testing.B) {
		tree, _ := New()
		key := nogc.AllocBytes(4)

		//println(tree.String())
		b.ResetTimer()
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			key.SetInt32LE(0, int32(i))
			tree.InsertBytes(key, 0)
		}
		b.StopTimer()
		tree.Free()
		key.Free()
	})
	b.Run("insert int64BE", func(b *testing.B) {
		tree, _ := New()
		key := nogc.AllocBytes(8)

		//println(tree.String())
		b.ResetTimer()
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			key.SetInt64BE(0, int64(i))
			tree.InsertBytes(key, 0)
		}
		b.StopTimer()
		tree.Free()
		key.Free()
	})
	b.Run("insert int64LE", func(b *testing.B) {
		tree, _ := New()
		key := nogc.AllocBytes(8)

		//println(tree.String())
		b.ResetTimer()
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			key.SetInt64LE(0, int64(i))
			tree.InsertBytes(key, 0)
		}
		b.StopTimer()
		tree.Free()
		key.Free()
	})
	b.Run("insert int64 PointerSet", func(b *testing.B) {
		m := nogc.NewPointerSet(uintptr(b.N * 2))
		key := nogc.AllocBytes(8)

		//println(tree.String())
		b.ResetTimer()
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			key.SetInt64BE(0, int64(i))
			m.Set(uintptr(i))
		}
		b.StopTimer()
		key.Free()
		_ = m.Close()
	})
	b.Run("insert int64 gomap", func(b *testing.B) {
		m := make(map[int64]struct{}, b.N*2)
		key := nogc.AllocBytes(8)

		//println(tree.String())
		b.ResetTimer()
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			m[int64(i)] = struct{}{}
		}
		b.StopTimer()
		key.Free()
	})
}

func BenchmarkTree_Find(b *testing.B) {
	runInt64BE := func(entries int) {
		tree, _ := New()
		defer tree.Free()
		key := nogc.AllocBytes(8)
		defer key.Free()

		for i := 0; i < entries; i++ {
			key.SetInt64BE(0, int64(i))
			tree.InsertBytes(key, 0)
		}

		b.Run("int64BE "+strconv.Itoa(entries)+" entries", func(b *testing.B) {
			key.SetInt64BE(0, int64(entries/2))
			b.ResetTimer()
			b.ReportAllocs()
			for i := 0; i < b.N; i++ {
				key.SetInt64BE(0, int64(i))
				tree.FindBytes(key)
			}
			b.StopTimer()
		})
	}
	runInt64BE(10)
	runInt64BE(100)
	runInt64BE(1000)
	runInt64BE(10000)
	runInt64BE(100000)
	runInt64BE(1000000)
	runInt64BE(10000000)
}

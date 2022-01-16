package tree

//func TestLock(t *testing.T) {
//	//SleepUnsafe(time.Minute)
//	l := synchronization.NewLock()
//	//l.Lock()
//	l.LockUnsafe()
//	l.UnlockUnsafe()
//
//	wg := &sync.WaitGroup{}
//	wg.Add(2)
//	go func() {
//		defer wg.Done()
//		println("go 1 before")
//		l.LockUnsafe()
//		println("go 1 after. waiting 2 seconds...")
//		synchronization.SleepUnsafe(time.Second * 2)
//		l.UnlockUnsafe()
//	}()
//
//	go func() {
//		defer wg.Done()
//		println("go 2 before. waiting 2 seconds...")
//		synchronization.SleepUnsafe(time.Second * 2)
//		//time.Sleep(time.Second*2)
//		l.Unlock()
//		synchronization.SleepUnsafe(time.Second)
//		l.LockUnsafe()
//		println("go 2 after")
//		l.UnlockUnsafe()
//	}()
//
//	wg.Wait()
//}
//
//func BenchmarkRWLock_Lock(b *testing.B) {
//	l := synchronization.NewLock()
//	b.Run("Unsafe", func(b *testing.B) {
//		for i := 0; i < b.N; i++ {
//			l.LockUnsafe()
//			l.UnlockUnsafe()
//		}
//	})
//
//	b.Run("Shared Unsafe", func(b *testing.B) {
//		for i := 0; i < b.N; i++ {
//			l.LockSharedUnsafe()
//			l.UnlockSharedUnsafe()
//		}
//	})
//	b.Run("Shared Safe", func(b *testing.B) {
//		for i := 0; i < b.N; i++ {
//			l.LockShared()
//			l.UnlockShared()
//		}
//	})
//	mut := &sync.Mutex{}
//	b.Run("Go Mutex", func(b *testing.B) {
//		for i := 0; i < b.N; i++ {
//			mut.Lock()
//			mut.Unlock()
//		}
//	})
//
//	rw := &sync.RWMutex{}
//	b.Run("Go RWMutex Lock/Unlock", func(b *testing.B) {
//		for i := 0; i < b.N; i++ {
//			rw.Lock()
//			rw.Unlock()
//		}
//	})
//
//	b.Run("Go RWMutex RLock/RUnlock", func(b *testing.B) {
//		for i := 0; i < b.N; i++ {
//			rw.RLock()
//			rw.RUnlock()
//		}
//	})
//}

//func TestNew2(t *testing.T) {
//	println("sizeof Leaf", unsafe.Sizeof(Leaf{}))
//	art, _ := NewART()
//	art.InsertBytes(nogc.BytesOfString("hello"), Value{
//		Data: 3,
//	})
//	art.InsertBytes(nogc.BytesOfString("below"), Value{
//		Data: 3,
//	})
//	art.InsertString("hello01", Value{
//		Data: 3,
//	})
//	found := art.FindBytes(nogc.BytesOfString("hello"))
//	fmt.Println("found", found)
//	println("size", art.Size())
//	min := art.Minimum()
//	println("min", uint(min.Data()), "key", min.Key().String())
//	max := art.Maximum()
//	println("max", uint(max.Data()), "key", max.Key().String())
//	art.Free()
//}
//
//func TestBytes(t *testing.T) {
//	art, _ := NewART()
//	key := nogc.AllocBytes(8)
//
//	//println(art.String())
//	for i := 0; i < 1000; i++ {
//		key.SetInt64BE(0, int64(i))
//		art.InsertBytes(key, Value{
//			Data: 3,
//		})
//	}
//	fmt.Println("1000:			", art.Bytes())
//	for i := 1000; i < 10000; i++ {
//		key.SetInt64BE(0, int64(i))
//		art.InsertBytes(key, Value{
//			Data: 3,
//		})
//	}
//	fmt.Println("10000:			", art.Bytes())
//	for i := 10000; i < 100000; i++ {
//		key.SetInt64BE(0, int64(i))
//		art.InsertBytes(key, Value{
//			Data: 3,
//		})
//	}
//	fmt.Println("100000:			", art.Bytes())
//	for i := 100000; i < 1000000; i++ {
//		key.SetInt64BE(0, int64(i))
//		art.InsertBytes(key, Value{
//			Data: 3,
//		})
//	}
//	fmt.Println("10000:			", art.Bytes())
//}
//
//func BenchmarkTree_Insert2(b *testing.B) {
//	b.Run("insert int32BE", func(b *testing.B) {
//		art, _ := NewART()
//		key := nogc.AllocBytes(4)
//
//		//println(art.String())
//		b.ResetTimer()
//		b.ReportAllocs()
//		for i := 0; i < b.N; i++ {
//			key.SetInt32BE(0, int32(i))
//			art.InsertBytes(key, Value{
//				Data: 3,
//			})
//		}
//		b.StopTimer()
//		art.Free()
//		key.Free()
//	})
//	b.Run("insert int32LE", func(b *testing.B) {
//		art, _ := NewART()
//		key := nogc.AllocBytes(4)
//
//		//println(art.String())
//		b.ResetTimer()
//		b.ReportAllocs()
//		for i := 0; i < b.N; i++ {
//			key.SetInt32LE(0, int32(i))
//			art.InsertBytes(key, Value{
//				Data: 3,
//			})
//		}
//		b.StopTimer()
//		fmt.Println("art bytes", art.Bytes())
//		fmt.Println("art size", art.Size())
//		art.Free()
//		key.Free()
//	})
//	b.Run("insert int64BE", func(b *testing.B) {
//		art, _ := NewART()
//		key := nogc.AllocBytes(8)
//
//		//println(art.String())
//		b.ResetTimer()
//		b.ReportAllocs()
//		for i := 0; i < b.N; i++ {
//			key.SetInt64BE(0, int64(i))
//			art.InsertBytes(key, Value{
//				Data: 3,
//			})
//		}
//		b.StopTimer()
//		fmt.Println("art bytes", art.Bytes())
//		fmt.Println("art size", art.Size())
//		art.Free()
//		key.Free()
//	})
//	b.Run("insert int64LE", func(b *testing.B) {
//		art, _ := NewART()
//		key := nogc.AllocBytes(8)
//
//		//println(art.String())
//		b.ResetTimer()
//		b.ReportAllocs()
//		for i := 0; i < b.N; i++ {
//			key.SetInt64LE(0, int64(i))
//			art.InsertBytes(key, Value{
//				Data: 3,
//			})
//		}
//		b.StopTimer()
//		art.Free()
//		key.Free()
//	})
//	b.Run("insert int64 PointerSet", func(b *testing.B) {
//		m := nogc.NewPointerSet(uintptr(b.N * 2))
//		key := nogc.AllocBytes(8)
//
//		var mu sync.Mutex
//		//println(art.String())
//		b.ResetTimer()
//		b.ReportAllocs()
//		for i := 0; i < b.N; i++ {
//			key.SetInt64BE(0, int64(i))
//			mu.Lock()
//			m.Put(uintptr(i))
//			mu.Unlock()
//		}
//		b.StopTimer()
//		key.Free()
//		_ = m.Close()
//	})
//	b.Run("insert int64 gomap", func(b *testing.B) {
//		m := make(map[int64]struct{}, b.N*2)
//		key := nogc.AllocBytes(8)
//
//		var mu sync.Mutex
//		b.ResetTimer()
//		b.ReportAllocs()
//		for i := 0; i < b.N; i++ {
//			mu.Lock()
//			m[int64(i)] = struct{}{}
//			mu.Unlock()
//		}
//		b.StopTimer()
//		key.Free()
//	})
//	//b.Run("insert int64 BTree HINT", func(b *testing.B) {
//	//	m := NewBTree(unsafe.Sizeof(BTreeRecordInt64{}), 64, BTreeInt64Compare(), 0)
//	//	key := nogc.AllocBytes(8)
//	//
//	//	var mu sync.Mutex
//	//	hint := uint64(0)
//	//	b.ResetTimer()
//	//	b.ReportAllocs()
//	//	for i := 0; i < b.N; i++ {
//	//		mu.Lock()
//	//		m.SetHint(int64(i), 101, &hint)
//	//		mu.Unlock()
//	//	}
//	//	b.StopTimer()
//	//	key.Free()
//	//})
//}
//
//func BenchmarkTree_Find2(b *testing.B) {
//	runInt64BE := func(entries int) {
//		b.Run("int64BE "+strconv.Itoa(entries)+" entries", func(b *testing.B) {
//			art, _ := NewART()
//			defer art.Free()
//			key := nogc.AllocBytes(8)
//			defer key.Free()
//
//			for i := 0; i < entries; i++ {
//				key.SetInt64BE(0, int64(i))
//				art.InsertBytes(key, Value{
//					Data: 3,
//				})
//			}
//			//key.SetInt64BE(0, int64(entries/2))
//			b.ResetTimer()
//			b.ReportAllocs()
//			for i := 0; i < b.N; i++ {
//				key.SetInt64BE(0, int64(i))
//				art.FindBytes(key)
//			}
//			b.StopTimer()
//		})
//	}
//	runInt64BE(10)
//	runInt64BE(100)
//	runInt64BE(1000)
//	runInt64BE(10000)
//	runInt64BE(100000)
//	runInt64BE(1000000)
//	//runInt64BE(10000000)
//}

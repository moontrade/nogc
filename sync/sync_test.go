package synchronization

import (
	"sync"
	"testing"
	"time"
)

func TestLock(t *testing.T) {
	//SleepUnsafe(time.Minute)
	l := NewLock()
	//l.Lock()
	l.LockUnsafe()
	l.UnlockUnsafe()

	wg := &sync.WaitGroup{}
	wg.Add(2)
	go func() {
		defer wg.Done()
		println("go 1 before")
		l.LockUnsafe()
		println("go 1 after. waiting 2 seconds...")
		SleepUnsafe(time.Second * 2)
		l.UnlockUnsafe()
	}()

	go func() {
		defer wg.Done()
		println("go 2 before. waiting 2 seconds...")
		SleepUnsafe(time.Second * 2)
		//time.Sleep(time.Second*2)
		l.Unlock()
		SleepUnsafe(time.Second)
		l.LockUnsafe()
		println("go 2 after")
		l.UnlockUnsafe()
	}()

	wg.Wait()
}

func BenchmarkRWLock_Lock(b *testing.B) {
	l := NewLock()
	b.Run("Unsafe", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			l.LockUnsafe()
			l.UnlockUnsafe()
		}
	})

	b.Run("Shared Unsafe", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			l.LockSharedUnsafe()
			l.UnlockSharedUnsafe()
		}
	})
	b.Run("Shared Safe", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			l.LockShared()
			l.UnlockShared()
		}
	})
	mut := &sync.Mutex{}
	b.Run("Go Mutex", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			mut.Lock()
			mut.Unlock()
		}
	})

	rw := &sync.RWMutex{}
	b.Run("Go RWMutex Lock/Unlock", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			rw.Lock()
			rw.Unlock()
		}
	})

	b.Run("Go RWMutex RLock/RUnlock", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			rw.RLock()
			rw.RUnlock()
		}
	})
}

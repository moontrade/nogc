package queue

import (
	"github.com/moontrade/nogc"
	"runtime"
	"sync"
	"sync/atomic"
	"testing"
)

func TestLockFreeQueue(t *testing.T) {
	const taskNum = 50000000
	nogc.AllocZeroed(24)
	q := AllocLockFreeQueue()

	b := nogc.AllocBytes(24)
	b.Free()

	var wg sync.WaitGroup
	goroutines := 100
	wg.Add(goroutines)
	for i := 0; i < goroutines; i++ {
		go func() {
			defer wg.Done()
			for i := 0; i < taskNum/goroutines; i++ {
				task := nogc.AllocBytes(24)
				q.Enqueue(task)
			}
		}()
	}

	var counter int32
	wg.Add(goroutines)
	for i := 0; i < goroutines; i++ {
		go func() {
			defer wg.Done()
			for {
				task := q.Dequeue()
				if !task.IsNil() {
					atomic.AddInt32(&counter, 1)
					task.Free()
				} else {
					break
				}
			}
		}()
	}

	wg.Wait()

	t.Logf("sent and received all %d tasks", taskNum)
}

func Benchmark(b *testing.B) {
	b.Run("queue", func(b *testing.B) {
		value := nogc.WrapString("hello")
		q := AllocLockFreeQueue()
		wg := &sync.WaitGroup{}
		startWg := &sync.WaitGroup{}
		startWg.Add(1)

		wg.Add(1)
		go func() {
			defer wg.Done()
			runtime.LockOSThread()
			defer runtime.UnlockOSThread()
			startWg.Wait()
			b.ResetTimer()
			b.ReportAllocs()
			for i := 0; i < b.N; i++ {
				q.Enqueue(value)
			}
		}()
		wg.Add(1)
		go func() {
			defer wg.Done()
			runtime.LockOSThread()
			defer runtime.UnlockOSThread()
			startWg.Wait()
			count := 0
			var v nogc.Bytes
			for {
				if count >= b.N {
					break
				}
				v = q.Dequeue()
				if !v.IsNil() {
					count++
				}
			}
		}()

		startWg.Done()
		wg.Wait()
	})

	b.Run("chan buf 1", func(b *testing.B) {
		value := nogc.WrapString("hello")
		wg := &sync.WaitGroup{}
		startWg := &sync.WaitGroup{}
		startWg.Add(1)

		ch := make(chan nogc.Bytes, 64)
		defer close(ch)

		wg.Add(1)
		go func() {
			defer wg.Done()
			startWg.Wait()
			b.ResetTimer()
			b.ReportAllocs()
			for i := 0; i < b.N; i++ {
				ch <- value
			}
		}()
		wg.Add(1)
		go func() {
			defer wg.Done()
			startWg.Wait()
			count := 0
			var v nogc.Bytes
			for {
				if count >= b.N {
					break
				}
				v = <-ch
				if !v.IsNil() {
					count++
				}
			}
		}()

		startWg.Done()
		wg.Wait()
	})
}

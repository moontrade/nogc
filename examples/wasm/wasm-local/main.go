package main

import (
	"github.com/moontrade/nogc"
	_ "github.com/moontrade/nogc"
	"runtime"
	"time"
	"unsafe"
)

//var b []byte

////export stub
//func stub() {}

type Order struct {
	Name string
}

func main() {
	var done = make(chan bool, 1)
	//mem.IsPowerOfTwo(0)
	println("hi moontrade!")
	var gb = make([]byte, 9000)
	_ = gb

	//go func() {
	//	println("task 1 done")
	//}()
	//
	go run()

	go func() {
		count := 0
		bb := make([]byte, 2048)
		for {
			count++
			//nogc.Scope(func(a nogc.AutoFree) {
			//	a.Alloc(512)
			//})
			//if b == nil {
			//	b = make([]byte, 128)
			//	b[0] = 10
			//}
			//b = make([]byte, 65536)
			//println(time.Now().UnixNano())
			_ = bb
			start := time.Now().UnixNano()
			runtime.GC()
			println("full GC", time.Now().UnixNano()-start)
			nogc.PrintGCStats()
			time.Sleep(time.Second)

			//nogc.PrintDebugInfo()
			if count == 5 {
				//done <- true
				//break
			}
		}
	}()

	//time.Sleep(time.Hour)
	_ = done
	<-done
	close(done)

	println("done")
}

func run() {
	//var b []byte
	//
	//if b == nil {
	//}
	b := make([]byte, 24000)
	d := make([]*Order, 16384)
	_ = d
	for {

		b[0] = 10
		b[1]++
		_ = b
		println("b address", uint(uintptr(unsafe.Pointer(&b))), uint(uintptr(unsafe.Pointer(&b[0]))))
		time.Sleep(time.Second)

		d[0] = nil
		if d[1] != nil {

		}

		//if false {
		//	break
		//}
	}

	b[0]--
	println("waiting for done")
}

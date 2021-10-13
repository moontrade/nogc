package main

import (
	"github.com/moontrade/nogc/unsafecgo"
)

func main() {
	//cgo.CGO()
	unsafecgo.NonBlocking((*byte)(nil), 0, 0)
}

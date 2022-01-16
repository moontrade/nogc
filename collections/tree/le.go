//go:build tinygo.wasm || 386 || amd64 || amd64p32 || arm || arm64 || loong64 || mips64le || mips64p32 || mips64p32le || mipsle || ppc64le || riscv || riscv64 || wasm

package tree

import (
	"math/bits"
)

func toBE(v uint64) uint64 {
	return bits.Reverse64(v)
}

func fromBE(v uint64) uint64 {
	return bits.Reverse64(v)
}

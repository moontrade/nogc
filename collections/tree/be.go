//go:build arm64be || armbe || mips || mips64 || ppc || ppc64 || s390 || s390x || sparc || sparc64
// +build arm64be armbe mips mips64 ppc ppc64 s390 s390x sparc sparc64

package tree

func toBE(v uint64) uint64 {
	return v
}

func fromBE(v uint64) uint64 {
	return v
}

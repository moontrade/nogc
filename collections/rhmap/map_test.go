package rhmap

import (
	. "github.com/moontrade/nogc"
	"testing"
)

func TestMap(t *testing.T) {
	m := NewMap(16)

	key := WrapString("MYID")
	value := WrapString("MYVALUE")

	m.Set(key, value)

	v, ok := m.Get(key)
	if !ok {

	}

	println(key.String(), v.String())
}

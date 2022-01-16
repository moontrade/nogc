package nogc

import "unsafe"

type FatPointer struct {
	Pointer
	len uintptr
}

func (fp *FatPointer) Len() uintptr {
	return fp.len
}

func FatPointerOfString(s string) FatPointer {
	return PointerOfString(s).ToFat(len(s))
}

func FatPointerOfStringRef(s *string) FatPointer {
	if s == nil {
		return FatPointer{}
	}
	return PointerOfString(*s).ToFat(len(*s))
}

func FatPointerOfBytes(v []byte) FatPointer {
	if v == nil {
		return FatPointer{}
	}
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(&v[0])),
		len:     uintptr(len(v)),
	}
}

func FatPointerOfBytesRef(v *[]byte) FatPointer {
	if v == nil {
		return FatPointer{}
	}
	vv := *v
	if vv == nil {
		return FatPointer{}
	}
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(&vv[0])),
		len:     uintptr(len(vv)),
	}
}

func FatPointerOfBool(v *bool) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     1,
	}
}

func FatPointerOfInt8(v *int8) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     1,
	}
}

func FatPointerOfUInt8(v *uint8) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     1,
	}
}

func FatPointerOfInt16(v *int16) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     2,
	}
}

func FatPointerOfUInt16(v *uint16) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     2,
	}
}

func FatPointerOfInt32(v *int32) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     4,
	}
}

func FatPointerOfUInt32(v *uint32) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     4,
	}
}

func FatPointerOfInt64(v *int64) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     8,
	}
}

func FatPointerOfUInt64(v *uint64) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     8,
	}
}

func FatPointerOfFloat32(v *float32) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     4,
	}
}

func FatPointerOfFloat64(v *float64) FatPointer {
	return FatPointer{
		Pointer: Pointer(unsafe.Pointer(v)),
		len:     8,
	}
}

func FatPointerOf(p Pointer, length uintptr) FatPointer {
	return FatPointer{Pointer: p, len: length}
}

func (fp FatPointer) String() string {
	return fp.Pointer.String(0, int(fp.len))
}

func (fp FatPointer) Bytes() []byte {
	return fp.Pointer.Bytes(0, int(fp.len), int(fp.len))
}

func (fp FatPointer) Clone() FatPointer {
	b := Alloc(fp.len)
	Copy(b.Unsafe(), fp.Unsafe(), fp.len)
	return FatPointer{Pointer: b, len: fp.len}
}

func (fp FatPointer) CloneAsBytes() Bytes {
	b := AllocBytes(fp.len)
	Copy(b.Unsafe(), fp.Unsafe(), fp.len)
	b.setLen(int(fp.len))
	return b
}

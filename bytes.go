package nogc

import (
	"github.com/moontrade/nogc/hash"
	"strconv"
	"unsafe"
)

// Bytes is a compact single dynamic allocation to be used as an unsafe replacement for string.
type Bytes struct {
	Pointer // Use for unchecked unsafe access
}

func BytesRef(ptr Pointer) *Bytes {
	return &Bytes{Pointer: ptr}
}

func AllocBytes(size uintptr) Bytes {
	return newBytesZeroed(size)
}

func BytesOfString(s string) Bytes {
	str := newBytesZeroed(uintptr(len(s)))
	str.Pointer.SetString(0, s)
	str.setLen(len(s))
	return str
}

func BytesOf(b []byte) Bytes {
	str := newBytesZeroed(uintptr(len(b)))
	str.Pointer.SetBytes(0, b)
	str.setLen(len(b))
	return str
}

func newBytesZeroed(size uintptr) Bytes {
	p, c := AllocZeroedCap(size + 8)
	if p == 0 {
		return Bytes{0}
	}
	// Put cap
	*(*uint32)(unsafe.Pointer(p)) = uint32(c)
	*(*uint32)(unsafe.Pointer(p + 4)) = 0
	return Bytes{p + 8}
}

func newBytes(size uintptr) Bytes {
	p, c := AllocCap(size + 8)
	if p == 0 {
		return Bytes{0}
	}
	// Put cap
	*(*uint32)(unsafe.Pointer(p)) = uint32(c)
	*(*uint32)(unsafe.Pointer(p + 4)) = 0
	return Bytes{p + 8}
}

//func newBytesZeroed(size uintptr) Bytes {
//	switch {
//	case size <= _Max8Size:
//		p, c := AllocCap(size)
//		b := Bytes{p + _8HeaderSize}
//		b.setFlags(_Type8)
//		b.setCap(int(c))
//		return b
//	case size <= _Max16Size:
//		p, c := AllocCap(size)
//		b := Bytes{p + _16HeaderSize}
//		b.setFlags(_Type16)
//		b.setCap(int(c))
//		return b
//	default:
//		p, c := AllocCap(size)
//		b := Bytes{p + _32HeaderSize}
//		b.setFlags(_Type32)
//		b.setCap(int(c))
//		return b
//	}
//}
//func (b Bytes) setFlags(flags uint8) {
//	*(*uint8)(unsafe.Pointer(b.Pointer - 1)) = flags
//}
// Go doesn't support packed structs so below are templates of the packed memory layout.
/*
type sdsHeader5 struct {
	len byte
	cap byte
	flags byte
	data struct{}
}

type sdsHeader8 struct {
	len uint8
	cap uint8
	flags byte
	data struct{}
}

type sdsHeader16 struct {
	len uint16
	cap uint16
	flags byte
	data struct{}
}

type sdsHeader32 struct {
	len uint32
	cap uint32
	flags byte
	data struct{}
}

type sdsHeader64 struct {
	len uint64
	cap uint64
	flags byte
	data struct{}
}
*/
//func (s Bytes) Len() int {
//	flags := *(*uint8)(unsafe.Pointer(s.Pointer - 1))
//	switch flags & _TypeMask {
//	case _Type8:
//		return int(*(*uint8)(unsafe.Pointer(s.Pointer - _8HeaderSize)))
//	case _Type16:
//		return int(*(*uint16)(unsafe.Pointer(s.Pointer - _16HeaderSize)))
//	case _Type32:
//		return int(*(*uint32)(unsafe.Pointer(s.Pointer - _32HeaderSize)))
//	}
//	return 0
//}
//func (s Bytes) setLen(l int) {
//	flags := *(*uint8)(unsafe.Pointer(s.Pointer - 1))
//	switch flags & _TypeMask {
//	case _Type8:
//		*(*uint8)(unsafe.Pointer(s.Pointer - _8HeaderSize)) = uint8(l)
//	case _Type16:
//		*(*uint16)(unsafe.Pointer(s.Pointer - _16HeaderSize)) = uint16(l)
//	case _Type32:
//		*(*uint32)(unsafe.Pointer(s.Pointer - _32HeaderSize)) = uint32(l)
//	}
//}
//func (s Bytes) Cap() int {
//	flags := *(*uint8)(unsafe.Pointer(s.Pointer - 1))
//	switch flags & _TypeMask {
//	case _Type8:
//		return int(*(*uint8)(unsafe.Pointer(s.Pointer - _8HeaderSize + 1)))
//	case _Type16:
//		return int(*(*uint16)(unsafe.Pointer(s.Pointer - _16HeaderSize + 2)))
//	case _Type32:
//		return int(*(*uint32)(unsafe.Pointer(s.Pointer - _32HeaderSize + 4)))
//	}
//	return 0
//}
//func (s Bytes) setCap(l int) {
//	flags := *(*uint8)(unsafe.Pointer(s.Pointer - 1))
//	switch flags & _TypeMask {
//	case _Type8:
//		*(*uint8)(unsafe.Pointer(s.Pointer - _8HeaderSize + 1)) = uint8(l)
//	case _Type16:
//		*(*uint16)(unsafe.Pointer(s.Pointer - _16HeaderSize + 2)) = uint16(l)
//	case _Type32:
//		*(*uint32)(unsafe.Pointer(s.Pointer - _32HeaderSize + 4)) = uint32(l)
//	}
//}
//func (s Bytes) allocationPointer() Pointer {
//	flags := *(*uint8)(unsafe.Pointer(s.Pointer - 1))
//	switch flags & _TypeMask {
//	case _Type8:
//		return s.Pointer - _8HeaderSize
//	case _Type16:
//		return s.Pointer - _16HeaderSize
//	case _Type32:
//		return s.Pointer - _32HeaderSize
//	}
//	return 0
//}

func (b Bytes) Len() int {
	if b.Pointer == 0 {
		return 0
	}
	return int(*(*uint32)(unsafe.Pointer(b.Pointer - 4)))
}
func (b Bytes) setLen(l int) {
	*(*uint32)(unsafe.Pointer(b.Pointer - 4)) = uint32(l)
}
func (b Bytes) Cap() int {
	return int(*(*uint32)(unsafe.Pointer(b.Pointer - 8)))
}
func (b Bytes) setCap(l int) {
	*(*uint32)(unsafe.Pointer(b.Pointer - 8)) = uint32(l)
}
func (s Bytes) allocationPointer() Pointer {
	return s.Pointer - 8
}

func (s *Bytes) Free() {
	if s == nil || s.Pointer == 0 {
		return
	}
	Free(s.allocationPointer())
	s.Pointer = 0
}

func (s *Bytes) CString() unsafe.Pointer {
	l := s.Len()
	if l == 0 {
		return nil
	}
	s.EnsureCap(l + 1)
	// Ensure it's NULL terminated
	*(*byte)(s.Pointer.Add(l).Unsafe()) = 0
	return s.Unsafe()
}

func (s Bytes) flags() uint8 {
	return *(*uint8)(unsafe.Pointer(s.Pointer - 1))
}

// Reset zeroes out the entire allocation and sets the length back to 0
func (s *Bytes) Reset() {
	Zero(s.Unsafe(), uintptr(s.Cap()))
	s.setLen(0)
}

// Zero zeroes out the entire allocation.
func (s Bytes) Zero() {
	Zero(s.Unsafe(), uintptr(s.Cap()))
}

//goland:noinspection GoVetUnsafePointer
func (s *Bytes) Equals(o Bytes) bool {
	l := s.Len()
	return l == o.Len() && (*s == o || Equals(
		s.Unsafe(),
		o.Unsafe(), uintptr(l)))
}

func (s *Bytes) IsNil() bool {
	return s == nil || s.Pointer == 0
}

func (s Bytes) IsEmpty() bool {
	return s.Pointer == 0 || s.Len() == 0
}

func (s *Bytes) CheckBounds(offset int) bool {
	return uintptr(s.Pointer) == 0 || s.Len() < offset
}

func (s *Bytes) String() string {
	l := s.Len()
	if l == 0 {
		return ""
	}
	return s.Pointer.String(0, l)
}

func (s *Bytes) Bytes() []byte {
	l := s.Len()
	if l == 0 {
		return nil
	}
	return s.Pointer.Bytes(0, l, l)
}

func (s *Bytes) ensureAppend(extra int) int {
	offset := s.Len()
	s.EnsureCap(offset + extra)
	s.setLen(offset + extra)
	return offset
}

// EnsureLen ensures the length is at least neededLen in size
// If not, EnsureCap(neededLen) is called and the length set to neededLen.
func (s *Bytes) EnsureLen(neededLen int) {
	l := s.Len()
	if l > neededLen {
		return
	}
	s.EnsureCap(neededLen)
	s.setLen(neededLen)
}

// EnsureCap ensures the capacity is at least neededCap in size
//goland:noinspection GoVetUnsafePointer
func (s *Bytes) EnsureCap(neededCap int) {
	cp := s.Cap()
	if cp >= neededCap {
		return
	}
	newCap := neededCap - cp
	addr := Realloc(s.allocationPointer(), uintptr(newCap))
	if addr == 0 {
		panic(ErrOutOfMemory)
	}
	*s = Bytes{addr}
}

// Clone creates a copy of this instance of Bytes
func (s *Bytes) Clone() Bytes {
	l := s.Len()
	c := AllocBytes(uintptr(l))
	Copy(c.Unsafe(), s.Pointer.Unsafe(), uintptr(l))
	c.setLen(l)
	return c
}

//goland:noinspection GoVetUnsafePointer
func (s *Bytes) Append(value Bytes) {
	if value.Pointer == 0 {
		return
	}
	l := s.Len()
	vl := value.Len()
	s.EnsureCap(l + vl)
	Move(unsafe.Pointer(uintptr(int(s.Pointer)+l)), value.Unsafe(), uintptr(vl))
	s.setLen(l + vl)
}

//goland:noinspection GoVetUnsafePointer
func (s *Bytes) AppendBytes(value []byte) {
	if len(value) == 0 {
		return
	}
	l := s.Len()
	s.EnsureCap(l + len(value))
	Move(unsafe.Pointer(uintptr(int(s.Pointer)+l)), unsafe.Pointer(&value[0]), uintptr(len(value)))
	s.setLen(l + len(value))
}

//goland:noinspection GoVetUnsafePointer
func (s *Bytes) AppendString(value string) {
	if len(value) == 0 {
		return
	}
	l := s.Len()
	s.EnsureCap(l + len(value))
	Move(
		unsafe.Pointer(uintptr(int(s.Pointer)+l)),
		unsafe.Pointer(*(*uintptr)(unsafe.Pointer(&value))),
		uintptr(len(value)),
	)
	s.setLen(l + len(value))
}

func (s *Bytes) SetLength(length int) {
	s.EnsureCap(length)
	s.setLen(length)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int(offset int) int {
	s.EnsureLen(offset + int(unsafe.Sizeof(int(0))))
	return s.Pointer.Int(offset)
}

func (s *Bytes) SetInt(offset int, value int) {
	s.EnsureLen(offset + int(unsafe.Sizeof(int(0))))
	s.Pointer.SetInt(offset, value)
}

//goland:noinspection GoVetUnsafePointer
func (s *Bytes) AppendInt(value int) {
	s.Pointer.SetInt(s.ensureAppend(int(unsafe.Sizeof(int(0)))), value)
}

func (s *Bytes) AppendIntString(value int) {
	s.appendInt(21, int64(value), 10)
}

func (s *Bytes) appendInt(maxLength int, value int64, base int) {
	l := s.Len()
	s.EnsureCap(l + maxLength)
	s.setLen(l + len(strconv.AppendInt(s.Pointer.Bytes(l, maxLength, maxLength), value, base)))
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint(offset int) int {
	s.EnsureLen(offset + int(unsafe.Sizeof(uint(0))))
	return s.Pointer.Int(offset)
}

func (s *Bytes) SetUint(offset int, value uint) {
	s.EnsureLen(offset + int(unsafe.Sizeof(uint(0))))
	s.Pointer.SetUint(offset, value)
}

//goland:noinspection GoVetUnsafePointer
func (s *Bytes) AppendUint(value uint) {
	s.Pointer.SetUint(s.ensureAppend(int(unsafe.Sizeof(uint(0)))), value)
}

func (s *Bytes) AppendUintString(value uint) {
	s.appendUint(20, uint64(value), 10)
}

func (s *Bytes) appendUint(maxLength int, value uint64, base int) {
	l := s.Len()
	s.EnsureCap(l + maxLength)
	s.setLen(l + len(strconv.AppendUint(s.Pointer.Bytes(l, maxLength, maxLength), value, base)))
}

///////////////////////////////////////////////////////////////////////////////////////////
// Pointer
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) PointerAt(offset int) Pointer {
	s.EnsureLen(offset + 8)
	return s.Pointer.Pointer(offset)
}

func (s *Bytes) SetPointer(offset int, value Pointer) {
	s.EnsureLen(offset + int(unsafe.Sizeof(uintptr(0))))
	s.Pointer.SetPointer(offset, value)
}

func (s *Bytes) AppendPointer(value Pointer) {
	s.Pointer.SetPointer(s.ensureAppend(int(unsafe.Sizeof(Pointer(0)))), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// uintptr
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uintptr(offset int) uintptr {
	s.EnsureLen(offset + int(unsafe.Sizeof(uintptr(0))))
	return s.Pointer.Uintptr(offset)
}

func (s *Bytes) SetUintptr(offset int, value uintptr) {
	s.EnsureLen(offset + int(unsafe.Sizeof(uintptr(0))))
	s.Pointer.SetUintptr(offset, value)
}

func (s *Bytes) AppendUintptr(value uintptr) {
	s.Pointer.SetUintptr(s.ensureAppend(int(unsafe.Sizeof(uintptr(0)))), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int8
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int8(offset int) int8 {
	s.EnsureLen(offset + 1)
	return s.Pointer.Int8(offset)
}

func (s *Bytes) SetInt8(offset int, value int8) {
	s.EnsureLen(offset + 1)
	s.Pointer.SetInt8(offset, value)
}

func (s *Bytes) AppendInt8(value int8) {
	s.Pointer.SetInt8(s.ensureAppend(1), value)
}

func (s *Bytes) AppendInt8String(value int8) {
	s.appendInt(4, int64(value), 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint8
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint8(offset int) uint8 {
	s.EnsureLen(offset + 1)
	return s.Pointer.Uint8(offset)
}

// SetUint8 is safe version. Will grow allocation if needed.
func (s *Bytes) SetUint8(offset int, value uint8) {
	s.EnsureLen(offset + 1)
	s.Pointer.SetUint8(offset, value)
}

func (s *Bytes) AppendUint8(value uint8) {
	s.Pointer.SetUint8(s.ensureAppend(1), value)
}

func (s *Bytes) AppendUint8String(value uint8) {
	s.appendUint(3, uint64(value), 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Byte
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Byte(offset int) byte {
	s.EnsureLen(offset + 1)
	return s.Pointer.Byte(offset)
}

func (s *Bytes) SetByte(offset int, value byte) {
	s.EnsureLen(offset + 1)
	s.Pointer.SetByte(offset, value)
}

func (s *Bytes) AppendByte(value byte) {
	s.Pointer.SetByte(s.ensureAppend(1), value)
}

func (s *Bytes) AppendByteString(value byte) {
	s.appendInt(3, int64(value), 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int16 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int16(offset int) int16 {
	s.EnsureLen(offset + 2)
	return s.Pointer.Int16(offset)
}

func (s *Bytes) SetInt16(offset int, value int16) {
	s.EnsureLen(offset + 2)
	s.Pointer.SetInt16(offset, value)
}

func (s *Bytes) AppendInt16(value int16) {
	s.Pointer.SetInt16(s.ensureAppend(2), value)
}

func (s *Bytes) AppendInt16String(value int16) {
	s.appendInt(6, int64(value), 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int16 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int16LE(offset int) int16 {
	s.EnsureLen(offset + 2)
	return s.Pointer.Int16LE(offset)
}

func (s *Bytes) SetInt16LE(offset int, value int16) {
	s.EnsureLen(offset + 2)
	s.Pointer.SetInt16LE(offset, value)
}

func (s *Bytes) AppendInt16LE(value int16) {
	s.Pointer.SetInt16LE(s.ensureAppend(2), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int16 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int16BE(offset int) int16 {
	s.EnsureLen(offset + 2)
	return s.Pointer.Int16BE(offset)
}

func (s *Bytes) SetInt16BE(offset int, value int16) {
	s.EnsureLen(offset + 2)
	s.Pointer.SetInt16BE(offset, value)
}

func (s *Bytes) AppendInt16BE(value int16) {
	s.Pointer.SetInt16BE(s.ensureAppend(2), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint16 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint16(offset int) uint16 {
	s.EnsureLen(offset + 2)
	return s.Pointer.Uint16(offset)
}

func (s *Bytes) SetUint16(offset int, value uint16) {
	s.EnsureLen(offset + 2)
	s.Pointer.SetUint16(offset, value)
}

func (s *Bytes) AppendUint16(value uint16) {
	s.Pointer.SetUint16(s.ensureAppend(2), value)
}

func (s *Bytes) AppendUint16String(value uint16) {
	s.appendUint(5, uint64(value), 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint16 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint16LE(offset int) uint16 {
	s.EnsureLen(offset + 2)
	return s.Pointer.Uint16LE(offset)
}

func (s *Bytes) SetUint16LE(offset int, value uint16) {
	s.EnsureLen(offset + 2)
	s.Pointer.SetUint16LE(offset, value)
}

func (s *Bytes) AppendUint16LE(value uint16) {
	s.Pointer.SetUint16LE(s.ensureAppend(2), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint16 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint16BE(offset int) uint16 {
	s.EnsureLen(offset + 2)
	return s.Pointer.Uint16BE(offset)
}

func (s *Bytes) SetUint16BE(offset int, value uint16) {
	s.EnsureLen(offset + 2)
	s.Pointer.SetUint16BE(offset, value)
}

func (s *Bytes) AppendUint16BE(value uint16) {
	s.Pointer.SetUint16BE(s.ensureAppend(2), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int32 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int32(offset int) int32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Int32(offset)
}

func (s *Bytes) SetInt32(offset int, value int32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetInt32(offset, value)
}

func (s *Bytes) AppendInt32(value int32) {
	s.Pointer.SetInt32(s.ensureAppend(4), value)
}

func (s *Bytes) AppendInt32String(value int32) {
	s.appendInt(11, int64(value), 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int32 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int32LE(offset int) int32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Int32LE(offset)
}

func (s *Bytes) SetInt32LE(offset int, value int32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetInt32LE(offset, value)
}

func (s *Bytes) AppendInt32LE(value int32) {
	s.Pointer.SetInt32LE(s.ensureAppend(4), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int32 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int32BE(offset int) int32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Int32BE(offset)
}

func (s *Bytes) SetInt32BE(offset int, value int32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetInt32BE(offset, value)
}

func (s *Bytes) AppendInt32BE(value int32) {
	s.Pointer.SetInt32BE(s.ensureAppend(4), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint32 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint32(offset int) uint32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Uint32(offset)
}

func (s *Bytes) SetUint32(offset int, value uint32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetUint32(offset, value)
}

func (s *Bytes) AppendUint32(value uint32) {
	s.Pointer.SetUint32(s.ensureAppend(4), value)
}

func (s *Bytes) AppendUint32String(value uint32) {
	s.appendUint(10, uint64(value), 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint32 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint32LE(offset int) uint32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Uint32LE(offset)
}

func (s *Bytes) SetUint32LE(offset int, value uint32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetUint32LE(offset, value)
}

func (s *Bytes) AppendUint32LE(value uint32) {
	s.Pointer.SetUint32LE(s.ensureAppend(4), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint32 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint32BE(offset int) uint32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Uint32BE(offset)
}

func (s *Bytes) SetUint32BE(offset int, value uint32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetUint32BE(offset, value)
}

func (s *Bytes) AppendUint32BE(value uint32) {
	s.Pointer.SetUint32BE(s.ensureAppend(4), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int64 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int64(offset int) int64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Int64(offset)
}

func (s *Bytes) SetInt64(offset int, value int64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetInt64(offset, value)
}

func (s *Bytes) AppendInt64(value int64) {
	s.Pointer.SetInt64(s.ensureAppend(8), value)
}

func (s *Bytes) AppendInt64String(value int64) {
	s.appendInt(21, value, 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int64 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int64LE(offset int) int64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Int64LE(offset)
}

func (s *Bytes) SetInt64LE(offset int, value int64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetInt64LE(offset, value)
}

func (s *Bytes) AppendInt64LE(value int64) {
	s.Pointer.SetInt64LE(s.ensureAppend(8), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int64 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int64BE(offset int) int64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Int64BE(offset)
}

func (s *Bytes) SetInt64BE(offset int, value int64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetInt64BE(offset, value)
}

func (s *Bytes) AppendInt64BE(value int64) {
	s.Pointer.SetInt64BE(s.ensureAppend(8), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint64 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint64(offset int) uint64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Uint64(offset)
}

func (s *Bytes) SetUint64(offset int, value uint64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetUint64(offset, value)
}

func (s *Bytes) AppendUint64(value uint64) {
	s.Pointer.SetUint64(s.ensureAppend(8), value)
}

func (s *Bytes) AppendUint64String(value uint64) {
	s.appendUint(20, value, 10)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint64 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint64LE(offset int) uint64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Uint64LE(offset)
}

func (s *Bytes) SetUint64LE(offset int, value uint64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetUint64LE(offset, value)
}

func (s *Bytes) AppendUint64LE(value uint64) {
	s.Pointer.SetUint64LE(s.ensureAppend(8), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint64 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint64BE(offset int) uint64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Uint64BE(offset)
}

func (s *Bytes) SetUint64BE(offset int, value uint64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetUint64BE(offset, value)
}

func (s *Bytes) AppendUint64BE(value uint64) {
	s.Pointer.SetUint64BE(s.ensureAppend(8), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Float32 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Float32(offset int) float32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Float32(offset)
}

func (s *Bytes) SetFloat32(offset int, value float32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetFloat32(offset, value)
}

func (s *Bytes) AppendFloat32(value float32) {
	s.Pointer.SetFloat32(s.ensureAppend(4), value)
}

func (s *Bytes) AppendFloat32String(value float32) {
	l := s.Len()
	s.EnsureCap(20)
	s.setLen(l + len(strconv.AppendFloat(s.Pointer.Bytes(l, 20, 20), float64(value), 'g', -1, 32)))
}

///////////////////////////////////////////////////////////////////////////////////////////
// Float32 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Float32LE(offset int) float32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Float32LE(offset)
}

func (s *Bytes) SetFloat32LE(offset int, value float32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetFloat32LE(offset, value)
}

func (s *Bytes) AppendFloat32LE(value float32) {
	s.Pointer.SetFloat32LE(s.ensureAppend(4), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Float32 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Float32BE(offset int) float32 {
	s.EnsureLen(offset + 4)
	return s.Pointer.Float32BE(offset)
}

func (s *Bytes) SetFloat32BE(offset int, value float32) {
	s.EnsureLen(offset + 4)
	s.Pointer.SetFloat32BE(offset, value)
}

func (s *Bytes) AppendFloat32BE(value float32) {
	s.Pointer.SetFloat32BE(s.ensureAppend(4), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Float64 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Float64(offset int) float64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Float64(offset)
}

func (s *Bytes) SetFloat64(offset int, value float64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetFloat64(offset, value)
}

func (s *Bytes) AppendFloat64(value float64) {
	s.Pointer.SetFloat64(s.ensureAppend(8), value)
}

func (s *Bytes) AppendFloat64String(value float64) {
	l := s.Len()
	s.EnsureCap(20)
	s.setLen(l + len(strconv.AppendFloat(s.Pointer.Bytes(l, 20, 20), value, 'g', -1, 64)))
}

///////////////////////////////////////////////////////////////////////////////////////////
// Float64 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Float64LE(offset int) float64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Float64LE(offset)
}

func (s *Bytes) SetFloat64LE(offset int, value float64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetFloat64(offset, value)
}

func (s *Bytes) AppendFloat64LE(value float64) {
	s.Pointer.SetFloat64LE(s.ensureAppend(8), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Float64 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Float64BE(offset int) float64 {
	s.EnsureLen(offset + 8)
	return s.Pointer.Float64BE(offset)
}

func (s *Bytes) SetFloat64BE(offset int, value float64) {
	s.EnsureLen(offset + 8)
	s.Pointer.SetFloat64(offset, value)
}

func (s *Bytes) AppendFloat64BE(value float64) {
	s.Pointer.SetFloat64BE(s.ensureAppend(8), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// String
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) SetString(offset int, value string) {
	s.EnsureCap(offset + len(value))
	length := offset + len(value)
	if s.Len() < length {
		s.setLen(length)
	}
	s.Pointer.SetString(offset, value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Bytes
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Set(offset int, value Bytes) {
	l := value.Len()
	if value.IsNil() || l == 0 {
		return
	}
	length := offset + int(l)
	s.EnsureCap(offset + length)
	if s.Len() < length {
		s.setLen(length)
	}
	Copy(s.Unsafe(), value.Unsafe(), uintptr(l))
}

func (s *Bytes) SetBytes(offset int, value []byte) {
	s.EnsureCap(offset + len(value))
	length := offset + len(value)
	if s.Len() < length {
		s.setLen(length)
	}
	s.Pointer.SetBytes(offset, value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int24 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int24(offset int) int32 {
	s.EnsureLen(offset + 3)
	return s.Pointer.Int24(offset)
}

func (s *Bytes) SetInt24(offset int, value int32) {
	s.EnsureLen(offset + 3)
	s.Pointer.SetInt24(offset, value)
}

func (s *Bytes) AppendInt24(value int32) {
	s.Pointer.SetInt24(s.ensureAppend(3), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int24 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int24LE(offset int) int32 {
	s.EnsureLen(offset + 3)
	return s.Pointer.Int24LE(offset)
}

func (s *Bytes) SetInt24LE(offset int, value int32) {
	s.EnsureLen(offset + 3)
	s.Pointer.SetInt24LE(offset, value)
}

func (s *Bytes) AppendInt24LE(value int32) {
	s.Pointer.SetInt24LE(s.ensureAppend(3), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int24 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int24BE(offset int) int32 {
	s.EnsureLen(offset + 3)
	return s.Pointer.Int24BE(offset)
}

func (s *Bytes) SetInt24BE(offset int, value int32) {
	s.EnsureLen(offset + 3)
	s.Pointer.SetInt24BE(offset, value)
}

func (s *Bytes) AppendInt24BE(value int32) {
	s.Pointer.SetInt24BE(s.ensureAppend(3), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint24 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint24(offset int) uint32 {
	s.EnsureLen(offset + 3)
	return s.Pointer.Uint24(offset)
}

func (s *Bytes) SetUint24(offset int, value uint32) {
	s.EnsureLen(offset + 3)
	s.Pointer.SetUint24(offset, value)
}

func (s *Bytes) AppendUint24(value uint32) {
	s.Pointer.SetUint24(s.ensureAppend(3), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint24 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint24LE(offset int) uint32 {
	s.EnsureLen(offset + 3)
	return s.Pointer.Uint24LE(offset)
}

func (s *Bytes) SetUint24LE(offset int, value uint32) {
	s.EnsureLen(offset + 3)
	s.Pointer.SetUint24LE(offset, value)
}

func (s *Bytes) AppendUint24LE(value uint32) {
	s.Pointer.SetUint24LE(s.ensureAppend(3), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint24 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint24BE(offset int) uint32 {
	s.EnsureLen(offset + 3)
	return s.Pointer.Uint24BE(offset)
}

func (s *Bytes) SetUint24BE(offset int, value uint32) {
	s.EnsureLen(offset + 3)
	s.Pointer.SetUint24BE(offset, value)
}

func (s *Bytes) AppendUint24BE(value uint32) {
	s.Pointer.SetUint24BE(s.ensureAppend(3), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int40 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int40(offset int) int64 {
	s.EnsureLen(offset + 5)
	return s.Pointer.Int40(offset)
}

func (s *Bytes) SetInt40(offset int, value int64) {
	s.EnsureLen(offset + 5)
	s.Pointer.SetInt40(offset, value)
}

func (s *Bytes) AppendInt40(value int64) {
	s.Pointer.SetInt40(s.ensureAppend(5), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int40 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int40LE(offset int) int64 {
	s.EnsureLen(offset + 5)
	return s.Pointer.Int40LE(offset)
}

func (s *Bytes) SetInt40LE(offset int, value int64) {
	s.EnsureLen(offset + 5)
	s.Pointer.SetInt40LE(offset, value)
}

func (s *Bytes) AppendInt40LE(value int64) {
	s.Pointer.SetInt40LE(s.ensureAppend(5), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int40 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int40BE(offset int) int64 {
	s.EnsureLen(offset + 5)
	return s.Pointer.Int40BE(offset)
}

func (s *Bytes) SetInt40BE(offset int, value int64) {
	s.EnsureLen(offset + 5)
	s.Pointer.SetInt40BE(offset, value)
}

func (s *Bytes) AppendInt40BE(value int64) {
	s.Pointer.SetInt40BE(s.ensureAppend(5), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint40 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint40(offset int) uint64 {
	s.EnsureLen(offset + 5)
	return s.Pointer.Uint40(offset)
}

func (s *Bytes) SetUint40(offset int, value uint64) {
	s.EnsureLen(offset + 5)
	s.Pointer.SetUint40(offset, value)
}

func (s *Bytes) AppendUint40(value uint64) {
	s.Pointer.SetUint40(s.ensureAppend(5), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint40 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint40LE(offset int) uint64 {
	s.EnsureLen(offset + 5)
	return s.Pointer.Uint40LE(offset)
}

func (s *Bytes) SetUint40LE(offset int, value uint64) {
	s.EnsureLen(offset + 5)
	s.Pointer.SetUint40LE(offset, value)
}

func (s *Bytes) AppendUint40LE(value uint64) {
	s.Pointer.SetUint40LE(s.ensureAppend(5), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint40 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint40BE(offset int) uint64 {
	s.EnsureLen(offset + 5)
	return s.Pointer.Uint40BE(offset)
}

func (s *Bytes) SetUint40BE(offset int, value uint64) {
	s.EnsureLen(offset + 5)
	s.Pointer.SetUint40BE(offset, value)
}

func (s *Bytes) AppendUint40BE(value uint64) {
	s.Pointer.SetUint40BE(s.ensureAppend(5), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int48 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int48(offset int) int64 {
	s.EnsureLen(offset + 6)
	return s.Pointer.Int48(offset)
}

func (s *Bytes) SetInt48(offset int, value int64) {
	s.EnsureLen(offset + 6)
	s.Pointer.SetInt48(offset, value)
}

func (s *Bytes) AppendInt48(value int64) {
	s.Pointer.SetInt48(s.ensureAppend(6), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int48 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int48LE(offset int) int64 {
	s.EnsureLen(offset + 6)
	return s.Pointer.Int48LE(offset)
}

func (s *Bytes) SetInt48LE(offset int, value int64) {
	s.EnsureLen(offset + 6)
	s.Pointer.SetInt48LE(offset, value)
}

func (s *Bytes) AppendInt48LE(value int64) {
	s.Pointer.SetInt48LE(s.ensureAppend(6), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int48 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int48BE(offset int) int64 {
	s.EnsureLen(offset + 6)
	return s.Pointer.Int48BE(offset)
}

func (s *Bytes) SetInt48BE(offset int, value int64) {
	s.EnsureLen(offset + 6)
	s.Pointer.SetInt48BE(offset, value)
}

func (s *Bytes) AppendInt48BE(value int64) {
	s.Pointer.SetInt48BE(s.ensureAppend(6), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint48 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint48(offset int) uint64 {
	s.EnsureLen(offset + 6)
	return s.Pointer.Uint48(offset)
}

func (s *Bytes) SetUint48(offset int, value uint64) {
	s.EnsureLen(offset + 6)
	s.Pointer.SetUint48(offset, value)
}

func (s *Bytes) AppendUint48(value uint64) {
	s.Pointer.SetUint48(s.ensureAppend(6), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint48 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint48LE(offset int) uint64 {
	s.EnsureLen(offset + 6)
	return s.Pointer.Uint48LE(offset)
}

func (s *Bytes) SetUint48LE(offset int, value uint64) {
	s.EnsureLen(offset + 6)
	s.Pointer.SetUint48LE(offset, value)
}

func (s *Bytes) AppendUint48LE(value uint64) {
	s.Pointer.SetUint48LE(s.ensureAppend(6), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint48 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint48BE(offset int) uint64 {
	s.EnsureLen(offset + 6)
	return s.Pointer.Uint48BE(offset)
}

func (s *Bytes) SetUint48BE(offset int, value uint64) {
	s.EnsureLen(offset + 6)
	s.Pointer.SetUint48BE(offset, value)
}

func (s *Bytes) AppendUint48BE(value uint64) {
	s.Pointer.SetUint48BE(s.ensureAppend(6), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int56 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int56(offset int) int64 {
	s.EnsureLen(offset + 7)
	return s.Pointer.Int56(offset)
}

func (s *Bytes) SetInt56(offset int, value int64) {
	s.EnsureLen(offset + 7)
	s.Pointer.SetInt56(offset, value)
}

func (s *Bytes) AppendInt56(value int64) {
	s.Pointer.SetInt56(s.ensureAppend(7), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int56 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int56LE(offset int) int64 {
	s.EnsureLen(offset + 7)
	return s.Pointer.Int56LE(offset)
}

func (s *Bytes) SetInt56LE(offset int, value int64) {
	s.EnsureLen(offset + 7)
	s.Pointer.SetInt56LE(offset, value)
}

func (s *Bytes) AppendInt56LE(value int64) {
	s.Pointer.SetInt56LE(s.ensureAppend(7), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Int56 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Int56BE(offset int) int64 {
	s.EnsureLen(offset + 7)
	return s.Pointer.Int56BE(offset)
}

func (s *Bytes) SetInt56BE(offset int, value int64) {
	s.EnsureLen(offset + 7)
	s.Pointer.SetInt56BE(offset, value)
}

func (s *Bytes) AppendInt56BE(value int64) {
	s.Pointer.SetInt56BE(s.ensureAppend(7), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint56 Native Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint56(offset int) uint64 {
	s.EnsureLen(offset + 7)
	return s.Pointer.Uint56(offset)
}

func (s *Bytes) SetUint56(offset int, value uint64) {
	s.EnsureLen(offset + 7)
	s.Pointer.SetUint56(offset, value)
}

func (s *Bytes) AppendUint56(value uint64) {
	s.Pointer.SetUint56(s.ensureAppend(7), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint56 Little Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint56LE(offset int) uint64 {
	s.EnsureLen(offset + 7)
	return s.Pointer.Uint56LE(offset)
}

func (s *Bytes) SetUint56LE(offset int, value uint64) {
	s.EnsureLen(offset + 7)
	s.Pointer.SetUint56LE(offset, value)
}

func (s *Bytes) AppendUint56LE(value uint64) {
	s.Pointer.SetUint56LE(s.ensureAppend(7), value)
}

///////////////////////////////////////////////////////////////////////////////////////////
// Uint56 Big Endian
///////////////////////////////////////////////////////////////////////////////////////////

func (s *Bytes) Uint56BE(offset int) uint64 {
	s.EnsureLen(offset + 7)
	return s.Pointer.Uint56BE(offset)
}

func (s *Bytes) SetUint56BE(offset int, value uint64) {
	s.EnsureLen(offset + 7)
	s.Pointer.SetUint56BE(offset, value)
}

func (s *Bytes) AppendUint56BE(value uint64) {
	s.Pointer.SetUint56BE(s.ensureAppend(7), value)
}

func (s *Bytes) Hash32() uint32 {
	const (
		offset32 = uint32(2166136261)
		prime32  = uint32(16777619)
	)
	hash := offset32
	end := s.Pointer + Pointer(s.Len())
	for i := s.Pointer; i < end; i++ {
		hash ^= uint32(*(*byte)(unsafe.Pointer(i)))
		hash *= prime32
	}
	return hash
}

func (s *Bytes) Hash64() uint64 {
	const (
		offset64 = uint64(14695981039346656037)
		prime64  = uint64(1099511628211)
	)
	hash := offset64
	end := s.Pointer + Pointer(s.Len())
	for i := s.Pointer; i < end; i++ {
		hash ^= uint64(*(*byte)(unsafe.Pointer(i)))
		hash *= prime64
	}
	return hash
}

func (s *Bytes) WyHash64(seed uint64, offset, length int) uint64 {
	return hash.WyHash(s.Bytes()[offset:length], seed)
}

func (s *Bytes) Metro64(seed uint64, offset, length int) uint64 {
	return hash.Metro(s.Bytes()[offset:length], seed)
}

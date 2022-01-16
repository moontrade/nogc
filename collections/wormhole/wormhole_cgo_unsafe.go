//go:build !tinygo && (amd64 || arm64)
// +build !tinygo
// +build amd64 arm64

package wormhole

/*
#cgo LDFLAGS: -L. -lstdc++
#cgo CXXFLAGS: -std=c++20 -I.
#include <stdlib.h>
#include <pthread.h>
#include "lib.h"
#include "kv.h"
#include "wh.h"

typedef struct {
	size_t ptr;
} qsbr_create_t;

void do_qsbr_create(size_t arg0, size_t arg1) {
	qsbr_create_t* args = (qsbr_create_t*)(void*)arg0;
	args->ptr = (size_t)qsbr_create();
}

typedef struct {
	size_t ptr;
} qsbr_destroy_t;

void do_qsbr_destroy(size_t arg0, size_t arg1) {
	qsbr_destroy_t* args = (qsbr_destroy_t*)(void*)arg0;
	qsbr_destroy((struct qsbr *)args->ptr);
}

typedef struct {
	size_t ptr;
	size_t ref;
	size_t success;
} qsbr_register_t;

void do_qsbr_register(size_t arg0, size_t arg1) {
	qsbr_register_t* args = (qsbr_register_t*)(void*)arg0;
	args->success = qsbr_register((struct qsbr *)args->ptr, (struct qsbr_ref *)args->ref) ? 1 : 0;
}

typedef struct {
	size_t ptr;
	size_t ref;
} qsbr_unregister_t;

void do_qsbr_unregister(size_t arg0, size_t arg1) {
	qsbr_unregister_t* args = (qsbr_unregister_t*)(void*)arg0;
	qsbr_unregister((struct qsbr *)args->ptr, (struct qsbr_ref *)args->ref);
}

typedef struct {
	size_t ptr;
	u64 target;
} qsbr_wait_t;

void do_qsbr_wait(size_t arg0, size_t arg1) {
	qsbr_wait_t* args = (qsbr_wait_t*)(void*)arg0;
	qsbr_wait((struct qsbr *)args->ptr, args->target);
}

typedef struct {
	size_t ref;
	u64 target;
} qsbr_update_t;

void do_qsbr_update(size_t arg0, size_t arg1) {
	qsbr_update_t* args = (qsbr_update_t*)(void*)arg0;
	qsbr_update((struct qsbr_ref *)args->ref, args->target);
}

typedef struct {
	size_t ref;
} qsbr_park_t;

void do_qsbr_park(size_t arg0, size_t arg1) {
	qsbr_park_t* args = (qsbr_park_t*)(void*)arg0;
	qsbr_park((struct qsbr_ref *)args->ref);
}

typedef struct {
	size_t ref;
} qsbr_resume_t;

void do_qsbr_resume(size_t arg0, size_t arg1) {
	qsbr_resume_t* args = (qsbr_resume_t*)(void*)arg0;
	qsbr_resume((struct qsbr_ref *)args->ref);
}

typedef struct {
	size_t ptr;
} wh_create_t;

void do_wh_create(size_t arg0, size_t arg1) {
	wh_create_t* args = (wh_create_t*)(void*)arg0;
	args->ptr = (size_t)wh_create();
}

typedef struct {
	size_t wh;
	size_t ref;
} wh_ref_t;

void do_wh_ref(size_t arg0, size_t arg1) {
	wh_ref_t* args = (wh_ref_t*)(void*)arg0;
	args->ref = (size_t)wh_ref((struct wormhole *)args->wh);
}

typedef struct {
	size_t ref;
	size_t key;
	size_t value;
	size_t success;
	u32 key_len;
	u32 value_len;
} wh_put_t;

void do_wh_put(size_t arg0, size_t arg1) {
	wh_put_t* args = (wh_put_t*)(void*)arg0;
	args->success = wh_put((struct wormref *)args->ref, (const void *)args->key, args->key_len, (const void *)args->value, args->value_len) ? 1 : 0;
}

typedef struct {
	size_t ref;
	size_t key;
	size_t success;
	u32 key_len;
} wh_del_t;

void do_wh_del(size_t arg0, size_t arg1) {
	wh_del_t* args = (wh_del_t*)(void*)arg0;
	args->success = wh_del((struct wormref *)args->ref, (const void *)args->key, args->key_len) ? 1 : 0;
}

typedef struct {
	size_t ref;
	size_t key;
	size_t value;
	size_t success;
	u32 key_len;
	u32 value_len;
	u32 value_len_out;
	u32 padding;
} wh_get_t;

void do_wh_get(size_t arg0, size_t arg1) {
	wh_get_t* args = (wh_get_t*)(void*)arg0;
	args->success = wh_get((struct wormref *)args->ref, (const void *)args->key, args->key_len, (void *)args->value, args->value_len, &args->value_len_out) ? 1 : 0;
}

typedef struct {
	size_t ptr;
} whunsafe_create_t;

void do_whunsafe_create(size_t arg0, size_t arg1) {
	whunsafe_create_t* args = (whunsafe_create_t*)(void*)arg0;
	args->ptr = (size_t)whunsafe_create(&kvmap_mm_ndf);
}

typedef struct {
	size_t map;
	size_t key;
	size_t value;
	u32 key_len;
	u32 value_len;
} whunsafe_get_t;

void do_whunsafe_get(size_t arg0, size_t arg1) {
	whunsafe_get_t* args = (whunsafe_get_t*)(void*)arg0;
	struct kref key;
	key.len = args->key_len;
	key.ptr = (const u8 *)args->key;
	struct kv out;
	struct kv* result = whunsafe_get((struct wormhole *)args->map, &key, &out);
	if (!result) {
		return;
	}
	//args->value = (size_t)result->privptr;
	//args->value_len = (u32)result->kvlen;
}

typedef struct {
	size_t map;
	size_t key;
	size_t value;
	size_t success;
	u32 key_len;
	u32 value_len;
} whunsafe_put_t;

void do_whunsafe_put(size_t arg0, size_t arg1) {
	whunsafe_put_t* args = (whunsafe_put_t*)(void*)arg0;
	struct kv * const newkv = kv_create((const void *)args->key, args->key_len, (const void *)args->value, args->value_len);
  	if (newkv == NULL) {
		args->success = 0;
    	return;
	}
	args->success = whunsafe_put((struct wormhole *)args->map, newkv) ? 1 : 0;
}

*/
import "C"
import (
	"github.com/moontrade/nogc"
	"github.com/moontrade/nogc/unsafecgo/cgo"
	"unsafe"
)

type QSBR C.struct_qsbr
type QSBRRef C.struct_qsbr_ref
type WH C.struct_wormhole
type Ref C.struct_wormref
type KV C.struct_kv

func NewQSBR() *QSBR {
	args := struct {
		ptr uintptr
	}{}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_qsbr_create), p, 0)
	return (*QSBR)(nogc.Pointer(args.ptr).Unsafe())
}

func (q *QSBR) Close() error {
	args := struct {
		ptr uintptr
	}{
		ptr: uintptr(unsafe.Pointer(q)),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_qsbr_destroy), p, 0)
	return nil
}

func (q *QSBR) Register(ref *QSBRRef) bool {
	args := struct {
		ptr     uintptr
		ref     uintptr
		success uintptr
	}{
		ptr: uintptr(unsafe.Pointer(q)),
		ref: uintptr(unsafe.Pointer(ref)),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_qsbr_register), p, 0)
	return args.success == 1
}

func (q *QSBR) Unregister(ref *QSBRRef) {
	args := struct {
		ptr uintptr
		ref uintptr
	}{
		ptr: uintptr(unsafe.Pointer(q)),
		ref: uintptr(unsafe.Pointer(ref)),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_qsbr_unregister), p, 0)
}

func (q *QSBR) Update(ref *QSBRRef, v uint64) {
	args := struct {
		ref uintptr
		v   uint64
	}{
		ref: uintptr(unsafe.Pointer(ref)),
		v:   v,
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_qsbr_update), p, 0)
}

func (q *QSBR) Park(ref *QSBRRef) {
	args := struct {
		ref uintptr
	}{
		ref: uintptr(unsafe.Pointer(ref)),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_qsbr_park), p, 0)
}

func (q *QSBR) Resume(ref *QSBRRef) {
	args := struct {
		ref uintptr
	}{
		ref: uintptr(unsafe.Pointer(ref)),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_qsbr_resume), p, 0)
}

func (q *QSBR) Wait(target uint64) {
	args := struct {
		ptr    uintptr
		target uint64
	}{
		ptr:    uintptr(unsafe.Pointer(q)),
		target: target,
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_qsbr_wait), p, 0)
}

type Unsafe struct {
	ptr uintptr
}

func NewUnsafe() Unsafe {
	args := struct {
		ptr uintptr
	}{}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_whunsafe_create), p, 0)
	return Unsafe{ptr: args.ptr}
}

func (wh Unsafe) Get(key nogc.FatPointer) nogc.FatPointer {
	/*
		typedef struct {
			size_t ref;
			size_t key;
			size_t value;
			size_t success;
			u32 key_len;
			u32 value_len;
			u32 value_len_out;
			u32 padding;
		} wh_get_t;
	*/
	args := struct {
		ref      uintptr
		key      uintptr
		value    uintptr
		keyLen   uint32
		valueLen uint32
	}{
		ref:    wh.ptr,
		key:    uintptr(key.Pointer),
		keyLen: uint32(key.Len()),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_whunsafe_get), p, 0)
	return nogc.FatPointerOf(nogc.Pointer(args.value), uintptr(args.valueLen))
}

func (wh Unsafe) Put(key, value nogc.FatPointer) bool {
	/*
		typedef struct {
			size_t ref;
			size_t key;
			size_t value;
			size_t success;
			u32 key_len;
			u32 value_len;
		} wh_put_t;
	*/
	args := struct {
		ref      uintptr
		key      uintptr
		value    uintptr
		success  uintptr
		keyLen   uint32
		valueLen uint32
	}{
		ref:      wh.ptr,
		key:      uintptr(key.Pointer),
		value:    uintptr(value.Pointer),
		keyLen:   uint32(key.Len()),
		valueLen: uint32(value.Len()),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_whunsafe_put), p, 0)
	return args.success == 1
}

//func (wh Unsafe) Delete(ref *Ref, key, value nogc.FatPointer) bool {
//	/*
//		typedef struct {
//			size_t ref;
//			size_t key;
//			size_t success;
//			u32 key_len;
//		} wh_put_t;
//	*/
//	args := struct {
//		ref     uintptr
//		key     uintptr
//		success uintptr
//		keyLen  uint32
//	}{
//		ref:    uintptr(unsafe.Pointer(ref)),
//		key:    uintptr(key.Pointer),
//		keyLen: uint32(key.Len()),
//	}
//	p := uintptr(unsafe.Pointer(&args))
//	cgo.NonBlocking((*byte)(C.do_wh_del), p, 0)
//	return args.success == 1
//}

type Wormhole struct {
	ptr uintptr
}

func NewWormhole() Wormhole {
	args := struct {
		ptr uintptr
	}{}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_wh_create), p, 0)
	return Wormhole{ptr: args.ptr}
}

func (wh Wormhole) Ref() *Ref {
	args := struct {
		wh  uintptr
		ref uintptr
	}{
		wh: wh.ptr,
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_wh_ref), p, 0)
	return (*Ref)(nogc.Pointer(args.ref).Unsafe())
}

func (wh Wormhole) Get(ref *Ref, key, value nogc.FatPointer) bool {
	/*
		typedef struct {
			size_t ref;
			size_t key;
			size_t value;
			size_t success;
			u32 key_len;
			u32 value_len;
			u32 value_len_out;
			u32 padding;
		} wh_get_t;
	*/
	args := struct {
		ref         uintptr
		key         uintptr
		value       uintptr
		success     uintptr
		keyLen      uint32
		valueLen    uint32
		valueLenOut uint32
		padding     uint32
	}{
		ref:      uintptr(unsafe.Pointer(ref)),
		key:      uintptr(key.Pointer),
		value:    uintptr(value.Pointer),
		keyLen:   uint32(key.Len()),
		valueLen: uint32(value.Len()),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_wh_get), p, 0)
	return args.success == 1
}

func (wh Wormhole) Put(ref *Ref, key, value nogc.FatPointer) bool {
	/*
		typedef struct {
			size_t ref;
			size_t key;
			size_t value;
			size_t success;
			u32 key_len;
			u32 value_len;
		} wh_put_t;
	*/
	args := struct {
		ref      uintptr
		key      uintptr
		value    uintptr
		success  uintptr
		keyLen   uint32
		valueLen uint32
	}{
		ref:      uintptr(unsafe.Pointer(ref)),
		key:      uintptr(key.Pointer),
		value:    uintptr(value.Pointer),
		keyLen:   uint32(key.Len()),
		valueLen: uint32(value.Len()),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_wh_put), p, 0)
	return args.success == 1
}

func (wh Wormhole) Delete(ref *Ref, key, value nogc.FatPointer) bool {
	/*
		typedef struct {
			size_t ref;
			size_t key;
			size_t success;
			u32 key_len;
		} wh_put_t;
	*/
	args := struct {
		ref     uintptr
		key     uintptr
		success uintptr
		keyLen  uint32
	}{
		ref:    uintptr(unsafe.Pointer(ref)),
		key:    uintptr(key.Pointer),
		keyLen: uint32(key.Len()),
	}
	p := uintptr(unsafe.Pointer(&args))
	cgo.NonBlocking((*byte)(C.do_wh_del), p, 0)
	return args.success == 1
}

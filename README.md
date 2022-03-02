# Go without Garbage Collection

High performance manual memory management for Go and TinyGo. The goal is to narrow the gap between Go and C/C++/Rust for low latency / high main-memory use cases. If you don't know why you would need this, then you probably don't. Programming around Go's GC is more difficult in a general sense.

## Allocators

### rpmalloc - Go

Rampant Pixel allocator. Extremely performant multi-threaded allocator that has the best overall performance of any major general purpose allocator. Destroys JEMalloc and TCMalloc in benchmarks at the cost of a little more memory use. Edges out mimalloc after 1 thread. The standard libc "malloc, free" are overridden with rpmalloc alternatives so any other C/C++/Rust code will automatically use rpmalloc. In order to have Go scheduler managed pthreads cleanup there thread local allocations, need to preload the (librpmalloc.so/dylib).

### TLSF - TinyGo (default) / Go (rpmalloc is default)

Two-Level Segregated Fit real-time allocator. Ported from AssemblyScript's TypeScript implementation in pure Go. Simple compact constant time allocator for predictable real-time performance. Intended for TinyGo WASM, but works on other TinyGo platforms as well as Go.

## unsafe CGO

libfuzzerCall in Go runtime for amd64 and arm64 architectures is utilized to dramatically reduce CGO cost by 1,000%+. On a 2019 MacBook Pro the overhead is reduced from 53.9ns to 2.9ns or (3.9ns via linked runtime.libfuzzerCall). ~2ns on a 2021 MacBook Pro M1. Do not blindly replace normal CGO calls with unsafe CGO calls. The Go scheduler is tricky with threads and unsafe CGO calls must be non-blocking or guarantee thread blocking (generally a bad idea). Rule of thumb is guaranteed CPU bound functions.

## Collections

Building on top of highly capable allocators and low unsafe CGO costs, external high-performance C/C++ libraries are integrated. The goal is to build a high-quality collection of extremely performant native collections that utilize the system allocator.

- Read/Write SpinLock fair and unfair (C++ via Meta's/Facebook's Folly project)
- ART (Adaptive Radix Tree) (C via modified version of libart) this is also a great Go map alternative
- BTree (C via tidwall's btree.c lib) use for heavy range operation usage
- LockFree Queue (Go)
- Cache w/ eviction strategies (TODO)

These collections incur Zero GC cost. A highly optimized C++ Read/Write Spin Lock is embedded to allow concurrency control across Go / C boundaries if needed. It utilizes unsafe CGO and may block a Go scheduler thread under heavy write contention.

## Net

Use Go based net libs like gnet, evio, fasthttp, etc. If using evio or something similar, allocate memory using the nogc allocator. For high connection counts, pool goroutines.

## Object Models

One obvious issue with manual memory management is standard go structs with pointers cannot be supported directly (strings, []byte, *struct{}, map, chan, etc).

Check out our other open source project: https://github.com/moontrade/proto

It's a new wire format similar to protocol buffers and flatbuffers. Layout is flat like flatbuffers. Code generation allows for rich Go APIs which are backed by manual or gc allocated memory.


## Why not just use C/C++/Rust?

All of those languages are great. This project uses C/C++ extensively and carefully. C/C++/Rust are great for extremely performance sensitive parts. Go is extremely productive while also compiling to native (smallish) binaries. We find Go much better for prototyping ideas. The only major hurdle we have encountered is the GC. One weakness is storing billion(s) of allocations in a map for example. Go's GC needs to scan an object graph continuously. We build low-latency software. Hopping over to a Redis server just for access to JEMalloc is a waste of time. Instead, that can just be embedded and with a better general purpose allocator like rpmalloc. Go also has good Raft implementations if high-availability is needed.

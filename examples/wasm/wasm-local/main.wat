(module
  (type $0 (func (param i32)))
  (type $1 (func))
  (type $2 (func (param i32) (result i32)))
  (type $3 (func (param i32 i32)))
  (type $4 (func (param i32 i32) (result i32)))
  (type $5 (func (param i32 i32 i32)))
  (type $6 (func (result i32)))
  (type $7 (func (param i32 i32 i32) (result i32)))
  (type $8 (func (param i64)))
  (type $9 (func (param i32 i32 i32 i32 i32)))
  (type $10 (func (param i32 i32 i32 i32)))
  (type $11 (func (result i64)))
  (type $12 (func (param i32) (result i64)))
  (type $13 (func (param i64) (result i64)))
  (type $14 (func (param i32 i32 i32 i32) (result i32)))
  (type $15 (func (param i32 i64 i32) (result i32)))
  (type $16 (func (param i64 i64) (result i64)))
  (import "wasi_snapshot_preview1" "fd_write" (func $runtime.fd_write (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func $runtime.clock_time_get (param i32 i64 i32) (result i32)))
  (import "env" "setTimeout" (func $setTimeout (param i64)))
  (memory $18  2)
  (table $17  5 5 funcref)
  (global $19  (mut i32) (i32.const 65536))
  (global $20  (mut i32) (i32.const 0))
  (global $21  (mut i32) (i32.const 0))
  (export "memory" (memory $18))
  (export "_start" (func $_start))
  (export "resume" (func $resume))
  (export "malloc" (func $malloc))
  (export "calloc" (func $calloc))
  (export "realloc" (func $realloc))
  (export "free" (func $free))
  (export "asyncify_start_unwind" (func $asyncify_start_unwind))
  (export "asyncify_stop_unwind" (func $asyncify_stop_unwind))
  (export "asyncify_start_rewind" (func $asyncify_start_rewind))
  (export "asyncify_stop_rewind" (func $asyncify_stop_rewind))
  (export "asyncify_get_state" (func $asyncify_get_state))
  (elem $22 (i32.const 1)
    $github.com/moontrade/nogc.GrowMin $runtime.run$1$gowrapper $main.run$gowrapper $main.main$1$gowrapper)
  
  (func $__wasm_call_ctors (type $1)
    nop
    )
  
  (func $math/bits.LeadingZeros (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        local.get $0
        call $math/bits.Len
        local.set $1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        i32.const 32
        local.get $0
        i32.sub
        return
      end ;; $if_2
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $math/bits.Len (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        local.get $0
        call $math/bits.Len32
        local.set $1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        local.get $0
        return
      end ;; $if_2
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $math/bits.Len32 (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $3
      local.get $1
      i32.load offset=8
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.const 1
      global.get $20
      if $if_1 (result i32)
        local.get $3
      else
        local.get $0
        i32.const 16
        i32.shr_u
        local.get $0
        local.get $0
        i32.const 65535
        i32.gt_u
        local.tee $3
        select
        local.tee $0
        i32.const 8
        i32.shr_u
        local.get $0
        local.get $0
        i32.const 255
        i32.gt_u
        local.tee $1
        select
        local.tee $0
        i32.const 256
        i32.lt_u
      end ;; $if_1
      select
      if $if_2
        local.get $2
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          call $runtime.lookupPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_5
        local.get $0
        i32.const 65568
        i32.add
        i32.load8_u
        local.get $3
        i32.const 4
        i32.shl
        local.tee $3
        i32.const 8
        i32.or
        local.get $3
        local.get $1
        select
        i32.add
        return
      end ;; $if_5
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $3
    i32.store offset=4
    local.get $2
    local.get $1
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime.lookupPanic (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        i32.const 66134
        i32.const 18
        call $runtime.runtimePanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $math/bits.TrailingZeros (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    call $math/bits.TrailingZeros32
    )
  
  (func $math/bits.TrailingZeros32 (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    i32.eqz
    if $if
      i32.const 32
      return
    end ;; $if
    i32.const 0
    local.get $0
    i32.sub
    local.get $0
    i32.and
    i32.const 125613361
    i32.mul
    i32.const 27
    i32.shr_u
    i32.const 65536
    i32.add
    i32.load8_u
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.Alloc (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $5
      local.get $3
      i32.load offset=16
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i32.const 0
        i32.store offset=12
        local.get $4
        i64.const 2
        i64.store offset=4 align=4
        i32.const 66844
        i32.load
        local.set $5
        i32.const 66844
        local.get $4
        i32.store
        local.get $4
        local.get $5
        i32.store
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_2
        local.get $2
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          i32.const 65832
          call $runtime._panic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      local.get $3
      local.get $4
      i32.const 8
      i32.add
      global.get $20
      select
      local.set $3
      local.get $2
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        local.get $0
        local.get $1
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.allocateBlock
        local.set $2
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $0
      end ;; $if_5
      global.get $20
      i32.eqz
      if $if_6
        local.get $3
        local.get $0
        i32.store
        local.get $4
        i32.const 12
        i32.add
        local.get $0
        i32.store
        i32.const 66844
        local.get $5
        i32.store
        local.get $4
        i32.const 16
        i32.add
        global.set $19
        local.get $0
        i32.const 4
        i32.add
        i32.const 0
        local.get $0
        select
        return
      end ;; $if_6
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $2
    local.get $5
    i32.store offset=12
    local.get $2
    local.get $3
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime._panic (type $0)
    (param $0 i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        i32.const 66082
        i32.const 7
        call $runtime.printstring
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_2
        local.get $0
        call $runtime.printitf
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $1
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        call $runtime.printnl
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      global.get $20
      i32.eqz
      if $if_4
        call $runtime.abort
        unreachable
      end ;; $if_4
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.allocateBlock (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i64)
    (local $10 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=8
      local.set $3
      local.get $2
      i32.load offset=12
      local.set $4
      local.get $2
      i32.load offset=16
      local.set $5
      local.get $2
      i32.load offset=20
      local.set $7
      local.get $2
      i32.load offset=24
      local.set $8
      local.get $2
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i64.const 0
        i64.store offset=20 align=4
        local.get $4
        i64.const 3
        i64.store offset=12 align=4
        i32.const 66844
        i32.load
        local.set $8
        i32.const 66844
        local.get $4
        i32.const 8
        i32.add
        local.tee $5
        i32.store
        local.get $4
        local.get $8
        i32.store offset=8
        local.get $4
        i32.const 16
        i32.add
        local.set $7
        i32.const 0
        local.set $3
      end ;; $if_1
      local.get $6
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $1
        call $github.com/moontrade/nogc/alloc/tlsf.prepareSize
        local.set $2
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $5
      end ;; $if_2
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        local.get $0
        local.get $5
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.searchBlock
        local.set $2
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $1
      end ;; $if_3
      global.get $20
      i32.eqz
      if $if_4
        local.get $7
        local.get $1
        i32.store
      end ;; $if_4
      block $block_0
        block $block_1
          global.get $20
          i32.const 1
          local.get $1
          select
          if $if_5
            local.get $6
            i32.const 2
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_6
              local.get $0
              local.get $5
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.growMemory
              local.set $2
              i32.const 2
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $2
              local.set $1
            end ;; $if_6
            global.get $20
            i32.eqz
            if $if_7
              local.get $1
              i32.const 1
              i32.and
              i32.eqz
              local.tee $1
              br_if $block_1
              local.get $4
              i32.const 20
              i32.add
              local.set $7
            end ;; $if_7
            local.get $6
            i32.const 3
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_8
              local.get $0
              local.get $5
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.searchBlock
              local.set $2
              i32.const 3
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $2
              local.set $1
            end ;; $if_8
            global.get $20
            i32.eqz
            if $if_9
              local.get $7
              local.get $1
              i32.store
              local.get $1
              i32.eqz
              br_if $block_1
            end ;; $if_9
          end ;; $if_5
          global.get $20
          i32.eqz
          if $if_10
            local.get $4
            i32.const 24
            i32.add
            local.tee $3
            local.get $1
            i32.store
          end ;; $if_10
          local.get $6
          i32.const 4
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_11
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.removeBlock
            i32.const 4
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_11
          local.get $6
          i32.const 5
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_12
            local.get $0
            local.get $1
            local.get $5
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.prepareBlock
            i32.const 5
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_12
          global.get $20
          i32.eqz
          if $if_13
            local.get $1
            i32.eqz
            br_if $block_0
            local.get $0
            i32.eqz
            br_if $block_0
            local.get $1
            i64.load32_u
            i64.const 4294967292
            i64.and
            local.tee $10
            local.get $0
            i32.const 40
            i32.add
            local.tee $3
            i64.load
            i64.add
            local.set $9
            local.get $3
            local.get $9
            i64.store
            local.get $9
            local.get $0
            i32.const 48
            i32.add
            i64.load
            i64.gt_s
            if $if_14
              local.get $0
              local.get $9
              i64.store offset=48
            end ;; $if_14
            local.get $0
            i32.const 56
            i32.add
            local.tee $3
            i64.load
            local.get $10
            i64.sub
            local.set $9
            local.get $3
            local.get $9
            i64.store
            local.get $0
            i32.const -64
            i32.sub
            local.tee $0
            i32.load
            i32.const 1
            i32.add
            local.set $3
            local.get $0
            local.get $3
            i32.store
            local.get $1
            local.set $3
          end ;; $if_13
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_15
          i32.const 66844
          local.get $8
          i32.store
          local.get $4
          i32.const 32
          i32.add
          global.set $19
          local.get $3
          return
        end ;; $if_15
      end ;; $block_0
      local.get $6
      i32.const 6
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_16
        call $runtime.nilPanic
        i32.const 6
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_16
      global.get $20
      i32.eqz
      if $if_17
        unreachable
      end ;; $if_17
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $3
    i32.store offset=8
    local.get $2
    local.get $4
    i32.store offset=12
    local.get $2
    local.get $5
    i32.store offset=16
    local.get $2
    local.get $7
    i32.store offset=20
    local.get $2
    local.get $8
    i32.store offset=24
    global.get $21
    global.get $21
    i32.load
    i32.const 28
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.prepareSize (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      local.get $2
      local.get $0
      i32.const 1073741821
      i32.lt_u
      global.get $20
      select
      i32.and
      i32.eqz
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          i32.const 65864
          call $runtime._panic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_4
        local.get $0
        call $github.com/moontrade/nogc/alloc/tlsf.computeSize
        return
      end ;; $if_4
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.searchBlock (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      local.get $2
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $2
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $2
          br_if $block_0
          local.get $1
          i32.const 256
          i32.lt_u
          local.set $2
          local.get $0
          i32.load
          local.set $0
        end ;; $if_1
        block $block_1
          block $block_2
            global.get $20
            i32.eqz
            if $if_2
              local.get $2
              br_if $block_2
              local.get $1
              i32.const 536870909
              i32.gt_u
              local.set $2
            end ;; $if_2
            global.get $20
            i32.const 1
            local.get $2
            select
            if $if_3
              local.get $4
              i32.const 0
              global.get $20
              select
              i32.eqz
              if $if_4
                local.get $1
                call $github.com/moontrade/nogc/alloc/tlsf.clz
                local.set $3
                i32.const 0
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $3
                local.set $2
              end ;; $if_4
              global.get $20
              if $if_5 (result i32)
                local.get $1
              else
                i32.const 0
                i32.const 1
                i32.const 27
                local.get $2
                i32.sub
                local.tee $2
                i32.shl
                local.get $2
                i32.const 31
                i32.gt_u
                select
                local.tee $2
                local.get $1
                i32.add
                i32.const 1
                i32.sub
              end ;; $if_5
              local.set $1
            end ;; $if_3
            local.get $4
            i32.const 1
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_6
              local.get $1
              call $github.com/moontrade/nogc/alloc/tlsf.clz
              local.set $3
              i32.const 1
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $3
              local.set $2
            end ;; $if_6
            global.get $20
            i32.eqz
            if $if_7
              i32.const 16
              local.get $1
              i32.const 27
              local.get $2
              i32.sub
              local.tee $1
              i32.shr_u
              i32.const 16
              i32.xor
              local.get $1
              i32.const 31
              i32.gt_u
              select
              local.set $1
              i32.const 24
              local.get $2
              i32.sub
              local.set $2
              br $block_1
            end ;; $if_7
          end ;; $block_2
          global.get $20
          i32.eqz
          if $if_8
            i32.const 0
            local.set $2
            local.get $1
            i32.const 4
            i32.shr_u
            local.set $1
          end ;; $if_8
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_9
          local.get $0
          local.get $2
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getSL
          i32.const 0
          i32.const -1
          local.get $1
          i32.shl
          local.get $1
          i32.const 31
          i32.gt_u
          select
          i32.and
          local.tee $1
          i32.eqz
          if $if_10
            local.get $0
            i32.eqz
            br_if $block_0
            i32.const 0
            local.set $1
            local.get $0
            i32.load
            i32.const 0
            i32.const -1
            local.get $2
            i32.const 1
            i32.add
            local.tee $2
            i32.shl
            local.get $2
            i32.const 31
            i32.gt_u
            select
            i32.and
            local.tee $2
            if $if_11 (result i32)
              local.get $0
              local.get $2
              call $github.com/moontrade/nogc/alloc/tlsf.ctz
              local.tee $1
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getSL
              call $github.com/moontrade/nogc/alloc/tlsf.ctz32
              local.set $2
              local.get $0
              local.get $1
              local.get $2
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead
            else
              local.get $1
            end ;; $if_11
            return
          end ;; $if_10
          local.get $0
          local.get $2
          local.get $1
          call $github.com/moontrade/nogc/alloc/tlsf.ctz32
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead
          return
        end ;; $if_9
      end ;; $block_0
      local.get $4
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_12
        call $runtime.nilPanic
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_12
      global.get $20
      i32.eqz
      if $if_13
        unreachable
      end ;; $if_13
      unreachable
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.growMemory (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 40
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $4
      local.get $3
      i32.load offset=16
      local.set $5
      local.get $3
      i32.load offset=20
      local.set $6
      local.get $3
      i32.load offset=24
      local.set $8
      local.get $3
      i32.load offset=28
      local.set $9
      local.get $3
      i32.load offset=32
      local.set $10
      local.get $3
      i32.load offset=36
      local.set $11
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $7
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const -64
        i32.add
        local.tee $4
        global.set $19
        local.get $4
        i64.const 0
        i64.store offset=52 align=4
        local.get $4
        i64.const 0
        i64.store offset=44 align=4
        local.get $4
        i64.const 0
        i64.store offset=36 align=4
        local.get $4
        i64.const 7
        i64.store offset=28 align=4
        i32.const 66844
        i32.load
        local.set $8
        i32.const 66844
        local.get $4
        i32.const 24
        i32.add
        i32.store
        local.get $4
        local.get $8
        i32.store offset=24
        local.get $0
        i32.eqz
        local.set $5
        i32.const 0
        local.set $2
      end ;; $if_1
      block $block_0
        global.get $20
        i32.eqz
        if $if_2
          local.get $5
          br_if $block_0
          local.get $4
          i32.const 32
          i32.add
          local.get $0
          i32.load offset=16
          i32.store
          local.get $4
          i32.const 36
          i32.add
          local.tee $6
          local.get $0
          i32.const 20
          i32.add
          i32.load
          local.tee $5
          i32.store
          local.get $5
          i32.eqz
          local.set $5
        end ;; $if_2
        block $block_1
          global.get $20
          i32.eqz
          if $if_3
            local.get $5
            br_if $block_1
            local.get $1
            i32.const 536870909
            i32.gt_u
            local.set $2
          end ;; $if_3
          global.get $20
          i32.const 1
          local.get $2
          select
          if $if_4
            local.get $7
            i32.const 0
            global.get $20
            select
            i32.eqz
            if $if_5
              local.get $1
              call $github.com/moontrade/nogc/alloc/tlsf.clz
              local.set $3
              i32.const 0
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $3
              local.set $2
            end ;; $if_5
            global.get $20
            if $if_6 (result i32)
              local.get $1
            else
              i32.const -1
              i32.const -1
              i32.const 27
              local.get $2
              i32.sub
              local.tee $2
              i32.shl
              i32.const -1
              i32.xor
              local.tee $5
              local.get $2
              i32.const 31
              i32.gt_u
              select
              local.tee $2
              local.get $1
              i32.add
            end ;; $if_6
            local.set $1
          end ;; $if_4
          global.get $20
          i32.eqz
          if $if_7
            local.get $4
            i32.const 40
            i32.add
            local.get $0
            i32.load
            local.tee $2
            i32.store
            local.get $0
            i32.const 80
            i32.add
            i32.load
            local.set $9
            local.get $4
            i32.const 44
            i32.add
            local.get $2
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getTail
            local.tee $5
            i32.store
            local.get $4
            i32.const 48
            i32.add
            local.get $5
            i32.store
            local.get $4
            i32.const 52
            i32.add
            local.get $0
            i32.load offset=16
            local.tee $10
            i32.store
            local.get $4
            i32.const 56
            i32.add
            local.get $0
            i32.load offset=20
            local.tee $6
            i32.store
            local.get $6
            i32.eqz
            br_if $block_0
            local.get $4
            i32.const 8
            i32.add
            local.set $11
            i32.const 0
            i32.const 4
            local.get $9
            i32.const 16
            i32.shl
            local.get $5
            i32.const 4
            i32.ne
            i32.sub
            local.tee $5
            i32.shl
            local.get $5
            i32.const 31
            i32.gt_u
            select
            local.get $1
            i32.add
            local.tee $1
            i32.const 65535
            i32.add
            i32.const 16
            i32.shr_s
            local.set $5
            i32.const 0
            local.set $2
          end ;; $if_7
          local.get $7
          i32.const 1
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_8
            local.get $11
            local.get $9
            local.get $5
            local.get $1
            local.get $10
            local.get $6
            call_indirect $17 (type $9)
            i32.const 1
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_8
          global.get $20
          i32.eqz
          if $if_9
            local.get $4
            i32.load offset=12
            local.tee $5
            i32.eqz
            br_if $block_1
            local.get $4
            i32.load offset=16
            local.tee $1
            i32.eqz
            br_if $block_1
            local.get $4
            i32.load offset=8
            local.tee $2
            i32.eqz
            if $if_10
              local.get $1
              local.get $5
              i32.sub
              local.tee $2
              i32.const 16
              i32.shr_u
              local.set $6
              local.get $6
              local.get $2
              i32.const 65535
              i32.and
              i32.const 0
              i32.ne
              i32.add
              local.set $2
            end ;; $if_10
            local.get $0
            local.get $1
            i32.store offset=8
            local.get $0
            local.get $0
            i32.load offset=80
            local.get $2
            i32.add
            local.tee $2
            i32.store offset=80
          end ;; $if_9
          local.get $7
          i32.const 2
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_11
            local.get $0
            local.get $5
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.addMemory
            i32.const 2
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_11
          local.get $2
          i32.const 1
          global.get $20
          select
          local.set $2
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_12
          i32.const 66844
          local.get $8
          i32.store
          local.get $4
          i32.const -64
          i32.sub
          global.set $19
          local.get $2
          return
        end ;; $if_12
      end ;; $block_0
      local.get $7
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_13
        call $runtime.nilPanic
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_13
      global.get $20
      i32.eqz
      if $if_14
        unreachable
      end ;; $if_14
      unreachable
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $3
    local.get $4
    i32.store offset=12
    local.get $3
    local.get $5
    i32.store offset=16
    local.get $3
    local.get $6
    i32.store offset=20
    local.get $3
    local.get $8
    i32.store offset=24
    local.get $3
    local.get $9
    i32.store offset=28
    local.get $3
    local.get $10
    i32.store offset=32
    local.get $3
    local.get $11
    i32.store offset=36
    global.get $21
    global.get $21
    i32.load
    i32.const 40
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.removeBlock (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $4
      local.get $3
      i32.load offset=16
      local.set $5
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      local.get $2
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $2
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $2
          br_if $block_0
          local.get $1
          i32.eqz
          br_if $block_0
          local.get $0
          i32.load
          local.set $5
          local.get $1
          i32.load
          local.tee $2
          i32.const -4
          i32.and
          local.tee $0
          i32.const 256
          i32.ge_u
          local.set $4
        end ;; $if_1
        block $block_1 (result i32)
          global.get $20
          i32.eqz
          if $if_2
            local.get $4
            i32.eqz
            if $if_3
              local.get $2
              i32.const 4
              i32.shr_u
              local.set $4
              i32.const 0
              br $block_1
            end ;; $if_3
            local.get $0
            call $github.com/moontrade/nogc/alloc/tlsf.min
            local.set $0
          end ;; $if_2
          local.get $6
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_4
            local.get $0
            call $github.com/moontrade/nogc/alloc/tlsf.clz
            local.set $3
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $3
            local.set $2
          end ;; $if_4
          global.get $20
          if $if_5 (result i32)
            local.get $2
          else
            i32.const 16
            local.get $0
            i32.const 27
            local.get $2
            i32.sub
            local.tee $4
            i32.shr_u
            i32.const 16
            i32.xor
            local.get $4
            i32.const 31
            i32.gt_u
            select
            local.set $4
            i32.const 24
            local.get $2
            i32.sub
          end ;; $if_5
        end ;; $block_1
        local.set $2
        global.get $20
        i32.eqz
        if $if_6
          local.get $1
          i32.load offset=8
          local.set $0
          local.get $1
          i32.load offset=4
          local.tee $3
          if $if_7
            local.get $3
            local.get $0
            i32.store offset=8
          end ;; $if_7
          local.get $0
          if $if_8
            local.get $0
            local.get $3
            i32.store offset=4
          end ;; $if_8
          block $block_2
            local.get $5
            local.get $2
            local.get $4
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead
            local.get $1
            i32.ne
            br_if $block_2
            local.get $5
            local.get $2
            local.get $4
            local.get $0
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
            local.get $0
            br_if $block_2
            local.get $5
            local.get $2
            local.get $5
            local.get $2
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getSL
            i32.const -1
            i32.const -2
            local.get $4
            i32.rotl
            local.get $4
            i32.const 31
            i32.gt_u
            select
            i32.and
            local.tee $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setSL
            local.get $1
            br_if $block_2
            local.get $5
            i32.eqz
            br_if $block_0
            local.get $5
            local.get $5
            i32.load
            i32.const -1
            i32.const -2
            local.get $2
            i32.rotl
            local.get $2
            i32.const 31
            i32.gt_u
            select
            i32.and
            i32.store
          end ;; $block_2
          return
        end ;; $if_6
      end ;; $block_0
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_9
        call $runtime.nilPanic
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_9
      global.get $20
      i32.eqz
      if $if_10
        unreachable
      end ;; $if_10
      return
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $3
    local.get $4
    i32.store offset=12
    local.get $3
    local.get $5
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.prepareBlock (type $5)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      local.get $3
      local.get $1
      i32.eqz
      global.get $20
      select
      local.set $3
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $3
          br_if $block_0
          local.get $1
          i32.load
          local.tee $3
          i32.const -4
          i32.and
          local.get $2
          i32.sub
          local.tee $6
          i32.const 16
          i32.lt_u
          local.set $5
        end ;; $if_1
        block $block_1
          global.get $20
          i32.eqz
          if $if_2
            local.get $5
            br_if $block_1
            local.get $1
            local.get $3
            i32.const 2
            i32.and
            local.get $2
            i32.or
            local.tee $3
            i32.store
            local.get $1
            local.get $2
            i32.add
            i32.const 4
            i32.add
            local.tee $1
            i32.eqz
            br_if $block_0
            local.get $1
            local.get $6
            i32.const 4
            i32.sub
            i32.const 1
            i32.or
            i32.store
          end ;; $if_2
          local.get $4
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_3
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.insertBlock
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          global.get $20
          i32.eqz
          if $if_4
            return
          end ;; $if_4
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_5
          local.get $1
          local.get $3
          i32.const -2
          i32.and
          i32.store
        end ;; $if_5
        local.get $4
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_6
          local.get $1
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getRight
          local.set $2
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $2
          local.set $1
        end ;; $if_6
        global.get $20
        i32.eqz
        if $if_7
          local.get $1
          i32.eqz
          br_if $block_0
          local.get $1
          local.get $1
          i32.load
          i32.const -3
          i32.and
          i32.store
          return
        end ;; $if_7
      end ;; $block_0
      local.get $4
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_8
        call $runtime.nilPanic
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_8
      global.get $20
      i32.eqz
      if $if_9
        unreachable
      end ;; $if_9
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $3
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.nilPanic (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        i32.const 66111
        i32.const 23
        call $runtime.runtimePanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.computeSize (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    i32.const 12
    local.get $0
    i32.const 12
    i32.gt_u
    select
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.clz (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        local.get $0
        call $math/bits.LeadingZeros
        local.set $1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        local.get $0
        return
      end ;; $if_2
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getSL (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    local.get $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.const 4
    i32.add
    i32.load
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.ctz (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    call $math/bits.TrailingZeros
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.ctz32 (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    call $math/bits.TrailingZeros32
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead (type $7)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    local.get $2
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.const 96
    i32.add
    i32.load
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getTail (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    i32.load offset=1568
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.addMemory (type $5)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      local.get $3
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $3
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $3
          br_if $block_0
          local.get $2
          i32.const -16
          i32.and
          local.set $2
          local.get $1
          i32.const 19
          i32.add
          i32.const -16
          i32.and
          local.tee $3
          i32.const 4
          i32.sub
          local.set $1
          i32.const 1
          local.set $4
          block $block_1
            local.get $0
            i32.load
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getTail
            local.tee $5
            i32.eqz
            br_if $block_1
            local.get $5
            local.get $3
            i32.const 20
            i32.sub
            local.tee $3
            i32.ne
            br_if $block_1
            local.get $5
            i32.load
            i32.const 2
            i32.and
            i32.const 1
            i32.or
            local.set $4
            local.get $3
            local.set $1
          end ;; $block_1
          local.get $2
          local.get $1
          i32.sub
          local.tee $2
          i32.const 19
          i32.le_u
          local.set $3
        end ;; $if_1
        block $block_2
          global.get $20
          i32.eqz
          if $if_2
            local.get $3
            br_if $block_2
            local.get $1
            i32.const 4
            i32.add
            local.tee $3
            i64.const 0
            i64.store align=4
            local.get $1
            local.get $2
            i32.const 8
            i32.sub
            local.tee $5
            local.get $4
            i32.or
            i32.store
            local.get $3
            local.get $5
            i32.add
            local.tee $4
            i32.eqz
            br_if $block_0
            local.get $4
            i32.const 2
            i32.store
            local.get $0
            i32.load
            local.get $4
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setTail
            local.get $0
            i32.const 56
            i32.add
            local.tee $4
            i64.load
            local.get $5
            i64.extend_i32_u
            i64.add
            local.set $7
            local.get $4
            local.get $7
            i64.store
            local.get $0
            local.get $0
            i64.load offset=32
            local.get $2
            i64.extend_i32_u
            i64.add
            i64.store offset=32
          end ;; $if_2
          local.get $6
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_3
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.insertBlock
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
        end ;; $block_2
        global.get $20
        i32.eqz
        if $if_4
          return
        end ;; $if_4
      end ;; $block_0
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        call $runtime.nilPanic
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $20
      i32.eqz
      if $if_6
        unreachable
      end ;; $if_6
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.min (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    i32.const 1073741820
    local.get $0
    i32.const 1073741820
    i32.lt_u
    select
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead (type $10)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (param $3 i32)
    local.get $2
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.const 96
    i32.add
    local.get $3
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setSL (type $5)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    local.get $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.const 4
    i32.add
    local.get $2
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.insertBlock (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $4
      local.get $3
      i32.load offset=16
      local.set $5
      local.get $3
      i32.load offset=20
      local.set $6
      local.get $3
      i32.load offset=24
      local.set $7
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      local.get $2
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $2
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $2
          br_if $block_0
          local.get $1
          i32.eqz
          local.tee $2
          br_if $block_0
          local.get $0
          i32.load
          local.set $5
          local.get $1
          i32.load
          local.set $4
        end ;; $if_1
        local.get $8
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          local.get $1
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getRight
          local.set $3
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $3
          local.set $2
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          local.get $2
          i32.eqz
          br_if $block_0
          local.get $2
          i32.load
          local.tee $7
          i32.const 1
          i32.and
          i32.eqz
          local.set $6
        end ;; $if_3
        global.get $20
        i32.const 1
        local.get $6
        select
        if $if_4
          local.get $8
          i32.const 1
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_5
            local.get $0
            local.get $2
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.removeBlock
            i32.const 1
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          global.get $20
          i32.eqz
          if $if_6
            local.get $1
            local.get $4
            local.get $7
            i32.const -4
            i32.and
            i32.add
            local.tee $2
            i32.const 4
            i32.add
            local.tee $4
            i32.store
          end ;; $if_6
          local.get $8
          i32.const 2
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_7
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getRight
            local.set $3
            i32.const 2
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $3
            local.set $2
          end ;; $if_7
          global.get $20
          if $if_8 (result i32)
            local.get $7
          else
            local.get $2
            i32.eqz
            br_if $block_0
            local.get $2
            i32.load
          end ;; $if_8
          local.set $7
        end ;; $if_4
        local.get $6
        local.get $4
        i32.const 2
        i32.and
        i32.eqz
        global.get $20
        select
        local.set $6
        block $block_1
          global.get $20
          i32.eqz
          if $if_9
            local.get $6
            br_if $block_1
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getFreeLeft
            local.tee $1
            i32.eqz
            br_if $block_0
            local.get $1
            i32.load
            local.set $6
          end ;; $if_9
          local.get $8
          i32.const 3
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_10
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.removeBlock
            i32.const 3
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_10
          global.get $20
          i32.eqz
          if $if_11
            local.get $1
            local.get $6
            local.get $4
            i32.const 4
            i32.add
            i32.const -4
            i32.and
            local.tee $0
            i32.add
            local.tee $4
            i32.store
          end ;; $if_11
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_12
          local.get $2
          i32.const 4
          i32.sub
          local.get $1
          i32.store
          local.get $2
          local.get $7
          i32.const 2
          i32.or
          i32.store
          local.get $4
          i32.const -4
          i32.and
          local.tee $2
          i32.const 255
          i32.gt_u
          local.set $0
        end ;; $if_12
        block $block_2 (result i32)
          global.get $20
          i32.eqz
          if $if_13
            local.get $0
            i32.eqz
            if $if_14
              local.get $4
              i32.const 4
              i32.shr_u
              local.set $4
              i32.const 0
              br $block_2
            end ;; $if_14
            local.get $2
            call $github.com/moontrade/nogc/alloc/tlsf.min
            local.set $2
          end ;; $if_13
          local.get $8
          i32.const 4
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_15
            local.get $2
            call $github.com/moontrade/nogc/alloc/tlsf.clz
            local.set $3
            i32.const 4
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $3
            local.set $0
          end ;; $if_15
          global.get $20
          if $if_16 (result i32)
            local.get $2
          else
            i32.const 16
            local.get $2
            i32.const 27
            local.get $0
            i32.sub
            local.tee $4
            i32.shr_u
            i32.const 16
            i32.xor
            local.get $4
            i32.const 31
            i32.gt_u
            select
            local.set $4
            i32.const 24
            local.get $0
            i32.sub
          end ;; $if_16
        end ;; $block_2
        local.set $2
        global.get $20
        i32.eqz
        if $if_17
          local.get $1
          local.get $5
          local.get $2
          local.get $4
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead
          local.tee $0
          i32.store offset=8
          local.get $1
          i32.const 0
          i32.store offset=4
          local.get $0
          if $if_18
            local.get $0
            local.get $1
            i32.store offset=4
          end ;; $if_18
          local.get $5
          local.get $2
          local.get $4
          local.get $1
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $5
          i32.eqz
          br_if $block_0
          local.get $5
          local.get $5
          i32.load
          i32.const 0
          i32.const 1
          local.get $2
          i32.shl
          local.get $2
          i32.const 31
          i32.gt_u
          select
          i32.or
          i32.store
          local.get $5
          local.get $2
          local.get $5
          local.get $2
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getSL
          i32.const 0
          i32.const 1
          local.get $4
          i32.shl
          local.get $4
          i32.const 31
          i32.gt_u
          select
          i32.or
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setSL
          return
        end ;; $if_17
      end ;; $block_0
      local.get $8
      i32.const 5
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_19
        call $runtime.nilPanic
        i32.const 5
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_19
      global.get $20
      i32.eqz
      if $if_20
        unreachable
      end ;; $if_20
      return
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $3
    local.get $4
    i32.store offset=12
    local.get $3
    local.get $5
    i32.store offset=16
    local.get $3
    local.get $6
    i32.store offset=20
    local.get $3
    local.get $7
    i32.store offset=24
    global.get $21
    global.get $21
    i32.load
    i32.const 28
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getRight (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_4
        local.get $0
        i32.load
        i32.const -4
        i32.and
        local.get $0
        i32.add
        i32.const 4
        i32.add
        return
      end ;; $if_4
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getFreeLeft (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    i32.const 4
    i32.sub
    i32.load
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setTail (type $3)
    (param $0 i32)
    (param $1 i32)
    local.get $0
    local.get $1
    i32.store offset=1568
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.AllocZeroed (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $5
      local.get $3
      i32.load offset=16
      local.set $6
      local.get $3
      i32.load offset=20
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i32.const 20
        i32.add
        local.tee $5
        i64.const 0
        i64.store align=4
        local.get $4
        i64.const 3
        i64.store offset=12 align=4
        i32.const 66844
        i32.load
        local.set $6
        i32.const 66844
        local.get $4
        i32.const 8
        i32.add
        i32.store
        local.get $4
        local.get $6
        i32.store offset=8
        local.get $4
        i32.const 16
        i32.add
        local.set $3
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $0
        local.get $1
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.allocateBlock
        local.set $2
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $0
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $3
        local.get $0
        i32.store
        local.get $5
        local.get $0
        i32.store
        i32.const 0
        local.set $5
        local.get $0
        if $if_4
          local.get $4
          i32.const 24
          i32.add
          local.get $0
          i32.const 4
          i32.add
          local.tee $5
          i32.store
          local.get $5
          local.get $1
          call $runtime.gcZero
        end ;; $if_4
        i32.const 66844
        local.get $6
        i32.store
        local.get $4
        i32.const 32
        i32.add
        global.set $19
        local.get $5
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $2
    local.get $5
    i32.store offset=12
    local.get $2
    local.get $6
    i32.store offset=16
    local.get $2
    local.get $3
    i32.store offset=20
    global.get $21
    global.get $21
    i32.load
    i32.const 24
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime.gcZero (type $3)
    (param $0 i32)
    (param $1 i32)
    local.get $0
    i32.const 0
    local.get $1
    call $memset
    drop
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.Free (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      local.get $3
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        local.get $1
        call $github.com/moontrade/nogc/alloc/tlsf.checkUsedBlock
        local.set $2
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $1
      end ;; $if_1
      local.get $3
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_2
        local.get $0
        local.get $1
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.freeBlock
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.checkUsedBlock (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      local.get $2
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $2
      block $block_0
        block $block_1
          global.get $20
          i32.eqz
          if $if_1
            block $block_2
              local.get $2
              br_if $block_2
              local.get $0
              i32.const 15
              i32.and
              br_if $block_2
              local.get $0
              i32.const 4
              i32.sub
              local.tee $0
              i32.eqz
              br_if $block_1
              local.get $0
              i32.load8_u
              i32.const 1
              i32.and
              i32.eqz
              br_if $block_0
            end ;; $block_2
          end ;; $if_1
          local.get $1
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_2
            i32.const 65928
            call $runtime._panic
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_2
          global.get $20
          i32.eqz
          if $if_3
            unreachable
          end ;; $if_3
        end ;; $block_1
        local.get $1
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_4
          call $runtime.nilPanic
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_4
        global.get $20
        i32.eqz
        if $if_5
          unreachable
        end ;; $if_5
      end ;; $block_0
      global.get $20
      i32.eqz
      if $if_6
        local.get $0
        return
      end ;; $if_6
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.freeBlock (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i64)
    (local $6 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      local.get $2
      local.get $1
      i32.eqz
      global.get $20
      select
      local.set $2
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $2
          br_if $block_0
          local.get $0
          i32.eqz
          br_if $block_0
          local.get $1
          i64.load32_u
          i64.const 4294967292
          i64.and
          local.tee $5
          local.get $0
          i32.const 56
          i32.add
          local.tee $2
          i64.load
          i64.add
          local.set $6
          local.get $2
          local.get $6
          i64.store
          local.get $0
          i32.const 40
          i32.add
          local.tee $2
          i64.load
          local.get $5
          i64.sub
          local.set $5
          local.get $2
          local.get $5
          i64.store
          local.get $0
          i32.const -64
          i32.sub
          local.tee $2
          i32.load
          i32.const 1
          i32.sub
          local.set $4
          local.get $2
          local.get $4
          i32.store
          local.get $1
          local.get $1
          i32.load
          i32.const 1
          i32.or
          i32.store
        end ;; $if_1
        local.get $3
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          local.get $0
          local.get $1
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.insertBlock
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          return
        end ;; $if_3
      end ;; $block_0
      local.get $3
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        call $runtime.nilPanic
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      global.get $20
      i32.eqz
      if $if_5
        unreachable
      end ;; $if_5
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.Realloc (type $7)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $4
      local.get $3
      i32.load offset=16
      local.set $5
      local.get $3
      i32.load offset=20
      local.set $6
      local.get $3
      i32.load offset=24
      local.set $7
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i32.const 20
        i32.add
        local.tee $7
        i64.const 0
        i64.store align=4
        local.get $4
        i64.const 3
        i64.store offset=12 align=4
        i32.const 66844
        i32.load
        local.set $5
        i32.const 66844
        local.get $4
        i32.const 8
        i32.add
        i32.store
        local.get $4
        local.get $5
        i32.store offset=8
        local.get $4
        i32.const 16
        i32.add
        local.set $6
      end ;; $if_1
      local.get $8
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $1
        call $github.com/moontrade/nogc/alloc/tlsf.checkUsedBlock
        local.set $3
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $1
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $6
        local.get $1
        i32.store
      end ;; $if_3
      local.get $8
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        local.get $0
        local.get $1
        local.get $2
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.moveBlock
        local.set $3
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $0
      end ;; $if_4
      global.get $20
      i32.eqz
      if $if_5
        local.get $7
        local.get $0
        i32.store
        local.get $4
        i32.const 24
        i32.add
        local.get $0
        i32.store
        i32.const 66844
        local.get $5
        i32.store
        local.get $4
        i32.const 32
        i32.add
        global.set $19
        local.get $0
        i32.const 4
        i32.add
        i32.const 0
        local.get $0
        select
        return
      end ;; $if_5
      unreachable
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $3
    local.get $4
    i32.store offset=12
    local.get $3
    local.get $5
    i32.store offset=16
    local.get $3
    local.get $6
    i32.store offset=20
    local.get $3
    local.get $7
    i32.store offset=24
    global.get $21
    global.get $21
    i32.load
    i32.const 28
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.moveBlock (type $7)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $4
      local.get $3
      i32.load offset=16
      local.set $5
      local.get $3
      i32.load offset=20
      local.set $6
      local.get $3
      i32.load offset=24
      local.set $7
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i32.const 12
        i32.add
        local.tee $5
        i64.const 0
        i64.store align=4
        local.get $4
        i64.const 0
        i64.store offset=20 align=4
        local.get $4
        i64.const 5
        i64.store offset=4 align=4
        i32.const 66844
        i32.load
        local.set $7
        i32.const 66844
        local.get $4
        i32.store
        local.get $4
        local.get $7
        i32.store
        local.get $4
        i32.const 8
        i32.add
        local.set $6
      end ;; $if_1
      local.get $8
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $0
        local.get $2
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.allocateBlock
        local.set $3
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $2
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $6
        local.get $2
        i32.store
        local.get $5
        local.get $2
        i32.store
        local.get $2
        i32.eqz
        local.set $6
        i32.const 0
        local.set $5
      end ;; $if_3
      block $block_0
        block $block_1
          global.get $20
          i32.eqz
          if $if_4
            local.get $6
            br_if $block_1
            local.get $4
            i32.const 24
            i32.add
            local.get $1
            i32.const 4
            i32.add
            local.tee $5
            i32.store
            local.get $4
            i32.const 20
            i32.add
            local.get $1
            i32.store
            local.get $4
            i32.const 16
            i32.add
            local.get $2
            i32.const 4
            i32.add
            local.tee $6
            i32.store
            local.get $1
            i32.eqz
            br_if $block_0
            local.get $6
            local.get $5
            local.get $1
            i32.load
            i32.const -4
            i32.and
            call $runtime.gcMemcpy
          end ;; $if_4
          local.get $8
          i32.const 1
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_5
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.freeBlock
            i32.const 1
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          local.get $5
          local.get $2
          global.get $20
          select
          local.set $5
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_6
          i32.const 66844
          local.get $7
          i32.store
          local.get $4
          i32.const 32
          i32.add
          global.set $19
          local.get $5
          return
        end ;; $if_6
      end ;; $block_0
      local.get $8
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_7
        call $runtime.nilPanic
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_7
      global.get $20
      i32.eqz
      if $if_8
        unreachable
      end ;; $if_8
      unreachable
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $3
    local.get $4
    i32.store offset=12
    local.get $3
    local.get $5
    i32.store offset=16
    local.get $3
    local.get $6
    i32.store offset=20
    local.get $3
    local.get $7
    i32.store offset=24
    global.get $21
    global.get $21
    i32.load
    i32.const 28
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime.gcMemcpy (type $5)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    local.get $0
    local.get $1
    local.get $2
    call $memcpy
    drop
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.Bootstrap (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $4
      i32.load
      local.set $0
      local.get $4
      i32.load offset=4
      local.set $1
      local.get $4
      i32.load offset=8
      local.set $2
      local.get $4
      i32.load offset=12
      local.set $5
      local.get $4
      i32.load offset=16
      local.set $4
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 96
        i32.sub
        local.tee $2
        global.set $19
        local.get $2
        i32.const 24
        i32.add
        i32.const 0
        i32.store8
        local.get $2
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get $2
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get $2
        i32.const 40
        i32.add
        i64.const 0
        i64.store
        local.get $2
        i32.const 48
        i32.add
        i64.const 0
        i64.store
        local.get $2
        i32.const 56
        i32.add
        i64.const 0
        i64.store
        local.get $2
        i32.const -64
        i32.sub
        i64.const 0
        i64.store
        local.get $2
        i32.const 72
        i32.add
        i64.const 0
        i64.store
        local.get $2
        i32.const 80
        i32.add
        i64.const 0
        i64.store
        local.get $2
        i32.const 88
        i32.add
        i32.const 0
        i32.store
        local.get $2
        i64.const 0
        i64.store
        local.get $2
        i64.const 0
        i64.store offset=32
        local.get $0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        i32.const 0
        i32.const 96
        call $memset
        local.tee $0
        i32.const 80
        i32.add
        i32.const 1
        i32.store
        local.get $0
        i32.const 68
        i32.add
        i32.const 1
        i32.store
        local.get $0
        local.get $1
        i32.store offset=8
        local.get $0
        i32.const 20
        i32.add
        i32.const 1
        i32.store
        local.get $0
        local.get $0
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        local.tee $5
        i32.const 88
        i32.add
        local.tee $4
        i32.store
        local.get $0
        local.get $0
        i32.store offset=4
      end ;; $if_1
      local.get $3
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $4
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.init
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $5
      local.get $5
      i32.const 1660
      i32.add
      global.get $20
      select
      local.set $5
      local.get $3
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        local.get $0
        local.get $5
        local.get $1
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.addMemory
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      global.get $20
      i32.eqz
      if $if_4
        local.get $2
        i32.const 96
        i32.add
        global.set $19
        local.get $0
        return
      end ;; $if_4
      unreachable
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $3
    local.get $5
    i32.store offset=12
    local.get $3
    local.get $4
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $github.com/moontrade/nogc.GrowMin (type $9)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (param $3 i32)
    (param $4 i32)
    global.get $19
    i32.const 16
    i32.sub
    local.tee $1
    global.set $19
    local.get $1
    i32.const 8
    i32.add
    local.get $2
    call $github.com/moontrade/nogc.growBy
    local.get $0
    local.get $2
    i32.const 0
    local.get $1
    i32.load offset=8
    local.tee $3
    select
    i32.store
    local.get $0
    local.get $1
    i32.load offset=12
    i32.const 0
    local.get $3
    select
    i32.store offset=8
    local.get $0
    local.get $3
    i32.store offset=4
    local.get $1
    i32.const 16
    i32.add
    global.set $19
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.init (type $0)
    (param $0 i32)
    (local $1 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if
      global.get $20
      i32.const 1
      local.get $0
      select
      i32.eqz
      if $if_0
        local.get $0
        i32.const 0
        i32.store
        local.get $0
        i32.const 0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setTail
        i32.const 0
        local.set $1
        loop $loop
          local.get $0
          local.get $1
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setSL
          local.get $0
          local.get $1
          i32.const 0
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 1
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 2
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 3
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 4
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 5
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 6
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 7
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 8
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 9
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 10
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 11
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 12
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 13
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 14
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $0
          local.get $1
          i32.const 15
          i32.const 0
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
          local.get $1
          i32.const 1
          i32.add
          local.tee $1
          i32.const 23
          i32.ne
          br_if $loop
        end ;; $loop
        return
      end ;; $if_0
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        call $runtime.nilPanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        unreachable
      end ;; $if_2
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc/hash.FNV32a (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    local.get $0
    i32.const 255
    i32.and
    i32.const -2128831035
    i32.xor
    i32.const 16777619
    i32.mul
    local.get $0
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    i32.xor
    i32.const 16777619
    i32.mul
    local.get $0
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    i32.xor
    i32.const 16777619
    i32.mul
    local.get $0
    i32.const 24
    i32.shr_u
    i32.xor
    i32.const 16777619
    i32.mul
    )
  
  (func $_lparen_*internal/task.gcData_rparen_.swap (type $0)
    (param $0 i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        local.get $0
        call $runtime.swapStackChain
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.swapStackChain (type $0)
    (param $0 i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_4
        local.get $0
        i32.load
        local.set $1
        local.get $0
        i32.const 66844
        i32.load
        i32.store
        i32.const 66844
        local.get $1
        i32.store
      end ;; $if_4
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*internal/task.Queue_rparen_.Empty (type $6)
    (result i32)
    i32.const 66832
    i32.load
    i32.eqz
    )
  
  (func $_lparen_*internal/task.Queue_rparen_.Pop (type $6)
    (result i32)
    (local $0 i32)
    (local $1 i32)
    i32.const 0
    local.set $1
    i32.const 66832
    i32.load
    local.tee $0
    if $if (result i32)
      i32.const 66832
      local.get $0
      i32.load
      i32.store
      i32.const 66836
      i32.load
      local.get $0
      i32.eq
      if $if_0
        i32.const 66836
        i32.const 0
        i32.store
      end ;; $if_0
      local.get $0
      i32.const 0
      i32.store
      local.get $0
    else
      local.get $1
    end ;; $if
    )
  
  (func $_lparen_*internal/task.Queue_rparen_.Push (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if
      global.get $20
      i32.eqz
      if $if_0
        block $block_0
          local.get $0
          i32.eqz
          br_if $block_0
          local.get $0
          i32.load offset=4
          if $if_1
            local.get $0
            i32.load offset=4
            local.tee $3
            i32.eqz
            br_if $block_0
            local.get $3
            local.get $1
            i32.store
          end ;; $if_1
          local.get $0
          local.get $1
          i32.store offset=4
          local.get $1
          i32.eqz
          br_if $block_0
          local.get $1
          i32.const 0
          i32.store
          local.get $0
          i32.load
          i32.eqz
          if $if_2
            local.get $0
            local.get $1
            i32.store
          end ;; $if_2
          return
        end ;; $block_0
      end ;; $if_0
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_3
        call $runtime.nilPanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      global.get $20
      i32.eqz
      if $if_4
        unreachable
      end ;; $if_4
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*internal/task.Task_rparen_.Resume (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $3
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_4
        i32.const 66576
        i32.load
        local.set $2
        local.get $0
        i32.const 16
        i32.add
        local.set $3
      end ;; $if_4
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        local.get $3
        call $_lparen_*internal/task.gcData_rparen_.swap
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $20
      i32.eqz
      if $if_6
        i32.const 66576
        local.get $0
        i32.store
        local.get $0
        i32.const 20
        i32.add
        local.set $4
        block $block_0
          local.get $0
          i32.const 36
          i32.add
          i32.load8_u
          if $if_7
            local.get $4
            call $tinygo_rewind
            br $block_0
          end ;; $if_7
          local.get $4
          call $tinygo_launch
          local.get $0
          i32.const 1
          i32.store8 offset=36
        end ;; $block_0
        i32.const 66576
        local.get $2
        i32.store
      end ;; $if_6
      local.get $1
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_8
        local.get $3
        call $_lparen_*internal/task.gcData_rparen_.swap
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_8
      global.get $20
      i32.eqz
      if $if_9
        local.get $0
        i32.const 32
        i32.add
        i32.load
        local.get $0
        i32.const 28
        i32.add
        i32.load
        i32.ge_u
        if $if_10
          return
        end ;; $if_10
      end ;; $if_9
      local.get $1
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_11
        i32.const 65936
        i32.const 14
        call $runtime.runtimePanic
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_11
      global.get $20
      i32.eqz
      if $if_12
        unreachable
      end ;; $if_12
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $1
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.runtimePanic (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        i32.const 66089
        i32.const 22
        call $runtime.printstring
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      local.get $2
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_2
        local.get $0
        local.get $1
        call $runtime.printstring
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $2
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        call $runtime.printnl
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      global.get $20
      i32.eqz
      if $if_4
        call $runtime.abort
        unreachable
      end ;; $if_4
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $_lparen_*internal/task.state_rparen_.initialize (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $5
      local.get $3
      i32.load offset=16
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i64.const 0
        i64.store offset=20 align=4
        local.get $4
        i64.const 3
        i64.store offset=12 align=4
        i32.const 66844
        i32.load
        local.set $3
        i32.const 66844
        local.get $4
        i32.const 8
        i32.add
        local.tee $5
        i32.store
        local.get $4
        local.get $3
        i32.store offset=8
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_2
        local.get $2
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_5
        local.get $0
        i32.const 0
        i32.store offset=4
        local.get $0
        local.get $1
        i32.store
        local.get $4
        i32.const 8
        i32.add
        local.tee $1
        i32.const 12
        i32.add
        local.set $5
      end ;; $if_5
      local.get $2
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_6
        i32.const 16384
        i32.const 3
        call $runtime.alloc
        local.set $2
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $1
      end ;; $if_6
      global.get $20
      i32.eqz
      if $if_7
        local.get $5
        local.get $1
        i32.store
        local.get $4
        i32.const 24
        i32.add
        local.get $1
        i32.store
        local.get $4
        i32.const 16
        i32.add
        local.get $1
        i32.store
        i32.const 66844
        local.get $3
        i32.store
        local.get $0
        local.get $1
        i32.store offset=8
        local.get $1
        i32.const -1204030091
        i32.store
        local.get $0
        i32.const 12
        i32.add
        local.get $1
        i32.const 16384
        i32.add
        i32.store
        local.get $4
        i32.const 32
        i32.add
        global.set $19
      end ;; $if_7
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $2
    local.get $5
    i32.store offset=12
    local.get $2
    local.get $3
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    )
  
  (func $runtime.alloc (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i64.const 1
        i64.store offset=4 align=4
        i32.const 66844
        i32.load
        local.set $3
        i32.const 66844
        local.get $4
        i32.store
        local.get $4
        local.get $3
        i32.store
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $0
        local.get $1
        call $runtime.gcAlloc
        local.set $2
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $0
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        i32.const 66844
        local.get $3
        i32.store
        local.get $4
        i32.const 8
        i32.add
        local.get $0
        i32.store
        local.get $4
        i32.const 16
        i32.add
        global.set $19
        local.get $0
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $2
    local.get $3
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $internal/task.start (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $2
      local.get $1
      i32.load offset=8
      local.set $3
      local.get $1
      i32.load offset=12
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $5
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $2
        global.set $19
        local.get $2
        i64.const 1
        i64.store offset=4 align=4
        i32.const 66844
        i32.load
        local.set $3
        i32.const 66844
        local.get $2
        i32.store
        local.get $2
        local.get $3
        i32.store
      end ;; $if_1
      local.get $5
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        i32.const 40
        i32.const 5333
        call $runtime.alloc
        local.set $4
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $4
        local.set $1
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        i32.const 66844
        local.get $3
        i32.store
        local.get $2
        i32.const 8
        i32.add
        local.get $1
        i32.store
        local.get $1
        i32.const 20
        i32.add
        local.set $3
      end ;; $if_3
      local.get $5
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        local.get $3
        local.get $0
        call $_lparen_*internal/task.state_rparen_.initialize
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      local.get $5
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        local.get $1
        call $runtime.runqueuePushBack
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $20
      i32.eqz
      if $if_6
        local.get $2
        i32.const 16
        i32.add
        global.set $19
      end ;; $if_6
      return
    end ;; $block
    local.set $4
    global.get $21
    i32.load
    local.get $4
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $4
    local.get $0
    i32.store
    local.get $4
    local.get $2
    i32.store offset=4
    local.get $4
    local.get $3
    i32.store offset=8
    local.get $4
    local.get $1
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    )
  
  (func $runtime.runqueuePushBack (type $0)
    (param $0 i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        i32.const 66832
        local.get $0
        call $_lparen_*internal/task.Queue_rparen_.Push
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $internal/task.Current (type $6)
    (result i32)
    i32.const 66576
    i32.load
    )
  
  (func $internal/task.Pause (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66576
        i32.load
        local.tee $0
        i32.eqz
        local.set $2
      end ;; $if_1
      block $block_0
        block $block_1
          block $block_2
            global.get $20
            i32.eqz
            if $if_2
              local.get $2
              br_if $block_2
              local.get $0
              i32.const 28
              i32.add
              i32.load
              i32.load
              i32.const -1204030091
              i32.ne
              local.tee $0
              br_if $block_1
              i32.const 66576
              i32.load
              local.tee $0
              i32.eqz
              br_if $block_2
              local.get $0
              i32.const 28
              i32.add
              local.set $0
            end ;; $if_2
            local.get $1
            i32.const 0
            global.get $20
            select
            i32.eqz
            if $if_3
              local.get $0
              call $tinygo_unwind
              i32.const 0
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_3
            global.get $20
            i32.eqz
            if $if_4
              i32.const 66576
              i32.load
              local.tee $0
              br_if $block_0
            end ;; $if_4
          end ;; $block_2
          local.get $1
          i32.const 1
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_5
            call $runtime.nilPanic
            i32.const 1
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          global.get $20
          i32.eqz
          if $if_6
            unreachable
          end ;; $if_6
        end ;; $block_1
        local.get $1
        i32.const 2
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_7
          i32.const 65950
          i32.const 14
          call $runtime.runtimePanic
          i32.const 2
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        global.get $20
        i32.eqz
        if $if_8
          unreachable
        end ;; $if_8
      end ;; $block_0
      global.get $20
      i32.eqz
      if $if_9
        local.get $0
        i32.const 28
        i32.add
        i32.load
        i32.const -1204030091
        i32.store
      end ;; $if_9
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.gcAlloc (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $5
      local.get $3
      i32.load offset=16
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i32.const 12
        i32.add
        local.tee $3
        i32.const 0
        i32.store
        local.get $4
        i64.const 2
        i64.store offset=4 align=4
        i32.const 66844
        i32.load
        local.set $5
        i32.const 66844
        local.get $4
        i32.store
        local.get $4
        local.get $5
        i32.store
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        i32.const 66500
        i32.const 7
        call $runtime.printstring
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $2
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        call $runtime.printspace
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      local.get $2
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        local.get $0
        call $runtime.printuint32
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      local.get $2
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        call $runtime.printspace
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      local.get $2
      i32.const 4
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_6
        local.get $1
        call $runtime.printuint32
        i32.const 4
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_6
      local.get $2
      i32.const 5
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_7
        call $runtime.printnl
        i32.const 5
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_7
      global.get $20
      i32.eqz
      if $if_8
        local.get $4
        i32.const 8
        i32.add
        i32.const 66948
        i32.load
        local.tee $1
        i32.store
      end ;; $if_8
      local.get $2
      i32.const 6
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_9
        local.get $1
        local.get $0
        call $_lparen_*github.com/moontrade/nogc.gc_rparen_.New
        local.set $2
        i32.const 6
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $0
      end ;; $if_9
      global.get $20
      i32.eqz
      if $if_10
        i32.const 66844
        local.get $5
        i32.store
        local.get $3
        local.get $0
        i32.store
        local.get $4
        i32.const 16
        i32.add
        global.set $19
        local.get $0
        return
      end ;; $if_10
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $2
    local.get $5
    i32.store offset=12
    local.get $2
    local.get $3
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime.printstring (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $1
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $1
          i32.const 0
          i32.le_s
          local.tee $2
          br_if $block_0
        end ;; $if_1
        loop $loop
          global.get $20
          i32.eqz
          if $if_2
            local.get $0
            i32.load8_u
            local.set $2
          end ;; $if_2
          local.get $3
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_3
            local.get $2
            call $runtime.putchar
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          global.get $20
          i32.eqz
          if $if_4
            local.get $0
            i32.const 1
            i32.add
            local.set $0
            local.get $1
            i32.const 1
            i32.sub
            local.tee $1
            br_if $loop
          end ;; $if_4
        end ;; $loop
      end ;; $block_0
      return
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.printnl (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        i32.const 10
        call $runtime.putchar
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.abort (type $1)
    unreachable
    )
  
  (func $runtime.putchar (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $3
      local.get $1
      i32.load offset=8
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66584
        i32.load
        local.tee $1
        i32.const 239
        i32.le_u
        local.set $3
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $3
      select
      if $if_2
        local.get $2
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          call $runtime.lookupPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_5
        i32.const 66584
        local.get $1
        i32.const 1
        i32.add
        local.tee $3
        i32.store
        local.get $1
        i32.const 66588
        i32.add
        local.get $0
        i32.store8
        local.get $0
        i32.const 255
        i32.and
        i32.const 10
        i32.eq
        local.set $0
      end ;; $if_5
      block $block_0
        global.get $20
        i32.eqz
        if $if_6
          local.get $0
          i32.eqz
          local.get $3
          i32.const 239
          i32.le_u
          i32.and
          br_if $block_0
          i32.const 66568
          local.get $3
          i32.store
        end ;; $if_6
        local.get $2
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_7
          i32.const 1
          i32.const 66564
          i32.const 1
          i32.const 66848
          call $runtime.fd_write
          drop
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        global.get $20
        i32.eqz
        if $if_8
          i32.const 66584
          i32.const 0
          i32.store
        end ;; $if_8
      end ;; $block_0
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $3
    i32.store offset=4
    local.get $2
    local.get $1
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.printspace (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        i32.const 32
        call $runtime.putchar
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*runtime.channelBlockedList_rparen_.detach (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (local $16 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 60
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $2
      local.get $1
      i32.load offset=8
      local.set $3
      local.get $1
      i32.load offset=16
      local.set $5
      local.get $1
      i32.load offset=20
      local.set $6
      local.get $1
      i32.load offset=24
      local.set $7
      local.get $1
      i32.load offset=28
      local.set $8
      local.get $1
      i32.load offset=32
      local.set $9
      local.get $1
      i32.load offset=36
      local.set $10
      local.get $1
      i32.load offset=40
      local.set $11
      local.get $1
      i32.load offset=44
      local.set $12
      local.get $1
      i32.load offset=48
      local.set $13
      local.get $1
      i32.load offset=52
      local.set $15
      local.get $1
      i32.load offset=56
      local.set $16
      local.get $1
      i32.load offset=12
      local.set $4
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $14
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $2
        global.set $19
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_2
        local.get $14
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_5
        local.get $0
        i32.load offset=12
        i32.eqz
        local.set $3
      end ;; $if_5
      block $block_0
        global.get $20
        i32.eqz
        if $if_6
          local.get $3
          br_if $block_0
          local.get $2
          i32.const 24
          i32.add
          i64.const 0
          i64.store
          local.get $2
          i32.const 16
          i32.add
          i64.const 0
          i64.store
          local.get $2
          i64.const 0
          i64.store offset=8
          local.get $0
          i32.const 16
          i32.add
          i32.load
          local.tee $15
          i32.const 0
          i32.gt_s
          local.set $3
        end ;; $if_6
        block $block_1
          global.get $20
          i32.eqz
          if $if_7
            local.get $3
            i32.eqz
            if $if_8
              local.get $2
              i32.const 28
              i32.add
              i32.load
              local.set $8
              i32.const 0
              local.set $9
              local.get $2
              i32.load offset=12
              local.set $6
              local.get $2
              i32.load offset=20
              local.set $10
              i32.const 0
              local.set $5
              i32.const 0
              local.set $11
              br $block_1
            end ;; $if_8
            local.get $0
            i32.load offset=12
            local.set $16
            i32.const 0
            local.set $12
            i32.const 0
            local.set $7
          end ;; $if_7
          loop $loop
            global.get $20
            i32.eqz
            if $if_9
              local.get $7
              local.get $16
              i32.add
              local.tee $6
              i32.load
              local.set $11
              local.get $6
              i32.const 20
              i32.add
              i32.load
              local.set $8
              local.get $6
              i32.const 16
              i32.add
              i32.load
              local.set $9
              local.get $6
              i32.const 12
              i32.add
              i32.load
              local.set $10
              local.get $6
              i32.const 8
              i32.add
              i32.load
              local.set $5
              local.get $6
              i32.const 4
              i32.add
              i32.load
              local.set $6
              local.get $12
              local.get $0
              i32.load offset=16
              i32.ge_u
              local.set $3
            end ;; $if_9
            block $block_2
              block $block_3
                block $block_4
                  block $block_5
                    block $block_6
                      global.get $20
                      i32.eqz
                      if $if_10
                        local.get $3
                        br_if $block_6
                        local.get $7
                        local.get $0
                        i32.load offset=12
                        i32.add
                        local.get $0
                        i32.eq
                        br_if $block_2
                        local.get $6
                        i32.eqz
                        br_if $block_2
                        local.get $5
                        i32.eqz
                        local.tee $3
                        br_if $block_4
                        local.get $5
                        i32.load
                        local.tee $3
                        i32.eqz
                        local.tee $4
                        br_if $block_4
                        local.get $5
                        i32.load
                        local.tee $4
                        i32.eqz
                        local.tee $13
                        br_if $block_4
                        local.get $12
                        local.get $0
                        i32.load offset=16
                        i32.ge_u
                        local.tee $13
                        br_if $block_6
                        local.get $7
                        local.get $0
                        i32.load offset=12
                        i32.add
                        local.set $13
                        local.get $4
                        i32.load offset=12
                        local.set $4
                      end ;; $if_10
                      local.get $14
                      i32.const 1
                      i32.eq
                      i32.const 1
                      global.get $20
                      select
                      if $if_11
                        local.get $4
                        local.get $13
                        call $_lparen_*runtime.channelBlockedList_rparen_.remove
                        local.set $1
                        i32.const 1
                        global.get $20
                        i32.const 1
                        i32.eq
                        br_if $block
                        drop
                        local.get $1
                        local.set $4
                      end ;; $if_11
                      global.get $20
                      i32.eqz
                      if $if_12
                        local.get $3
                        local.get $4
                        i32.store offset=12
                        local.get $5
                        i32.load
                        local.tee $3
                        i32.eqz
                        local.tee $4
                        br_if $block_4
                        local.get $3
                        i32.load offset=12
                        br_if $block_2
                        local.get $5
                        i32.load
                        local.set $3
                        local.get $5
                        i32.load offset=4
                        i32.eqz
                        if $if_13
                          local.get $3
                          i32.eqz
                          local.tee $4
                          br_if $block_4
                          local.get $3
                          i32.load8_u offset=8
                          i32.const 4
                          i32.eq
                          local.tee $3
                          br_if $block_2
                          local.get $5
                          i32.load
                          local.set $4
                          br $block_5
                        end ;; $if_13
                        local.get $3
                        i32.eqz
                        local.tee $4
                        br_if $block_4
                        local.get $5
                        i32.load
                        local.set $4
                        local.get $3
                        i32.load offset=24
                        i32.eqz
                        local.tee $3
                        br_if $block_5
                        i32.const 3
                        local.set $3
                        local.get $4
                        i32.eqz
                        local.tee $13
                        br_if $block_4
                        br $block_3
                      end ;; $if_12
                    end ;; $block_6
                    global.get $20
                    i32.eqz
                    if $if_14
                      local.get $2
                      local.get $8
                      i32.store offset=28
                      local.get $2
                      local.get $9
                      i32.store offset=24
                      local.get $2
                      local.get $10
                      i32.store offset=20
                      local.get $2
                      local.get $5
                      i32.store offset=16
                      local.get $2
                      local.get $6
                      i32.store offset=12
                      local.get $2
                      local.get $11
                      i32.store offset=8
                    end ;; $if_14
                    local.get $14
                    i32.const 2
                    i32.eq
                    i32.const 1
                    global.get $20
                    select
                    if $if_15
                      call $runtime.lookupPanic
                      i32.const 2
                      global.get $20
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_15
                    global.get $20
                    i32.eqz
                    if $if_16
                      unreachable
                    end ;; $if_16
                  end ;; $block_5
                  global.get $20
                  i32.eqz
                  if $if_17
                    i32.const 0
                    local.set $3
                    local.get $4
                    br_if $block_3
                  end ;; $if_17
                end ;; $block_4
                global.get $20
                i32.eqz
                if $if_18
                  local.get $2
                  local.get $8
                  i32.store offset=28
                  local.get $2
                  local.get $9
                  i32.store offset=24
                  local.get $2
                  local.get $10
                  i32.store offset=20
                  local.get $2
                  local.get $5
                  i32.store offset=16
                  local.get $2
                  local.get $6
                  i32.store offset=12
                  local.get $2
                  local.get $11
                  i32.store offset=8
                end ;; $if_18
                local.get $14
                i32.const 3
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_19
                  call $runtime.nilPanic
                  i32.const 3
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_19
                global.get $20
                i32.eqz
                if $if_20
                  unreachable
                end ;; $if_20
              end ;; $block_3
              global.get $20
              i32.eqz
              if $if_21
                local.get $4
                local.get $3
                i32.store8 offset=8
              end ;; $if_21
            end ;; $block_2
            global.get $20
            i32.eqz
            if $if_22
              local.get $7
              i32.const 24
              i32.add
              local.set $7
              local.get $15
              local.get $12
              i32.const 1
              i32.add
              local.tee $12
              i32.ne
              local.tee $3
              br_if $loop
            end ;; $if_22
          end ;; $loop
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_23
          local.get $2
          local.get $8
          i32.store offset=28
          local.get $2
          local.get $9
          i32.store offset=24
          local.get $2
          local.get $10
          i32.store offset=20
          local.get $2
          local.get $5
          i32.store offset=16
          local.get $2
          local.get $6
          i32.store offset=12
          local.get $2
          local.get $11
          i32.store offset=8
        end ;; $if_23
      end ;; $block_0
      global.get $20
      i32.eqz
      if $if_24
        local.get $2
        i32.const 32
        i32.add
        global.set $19
      end ;; $if_24
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $3
    i32.store offset=8
    local.get $1
    local.get $4
    i32.store offset=12
    local.get $1
    local.get $5
    i32.store offset=16
    local.get $1
    local.get $6
    i32.store offset=20
    local.get $1
    local.get $7
    i32.store offset=24
    local.get $1
    local.get $8
    i32.store offset=28
    local.get $1
    local.get $9
    i32.store offset=32
    local.get $1
    local.get $10
    i32.store offset=36
    local.get $1
    local.get $11
    i32.store offset=40
    local.get $1
    local.get $12
    i32.store offset=44
    local.get $1
    local.get $13
    i32.store offset=48
    local.get $1
    local.get $15
    i32.store offset=52
    local.get $1
    local.get $16
    i32.store offset=56
    global.get $21
    global.get $21
    i32.load
    i32.const 60
    i32.add
    i32.store
    )
  
  (func $_lparen_*runtime.channelBlockedList_rparen_.remove (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if
      global.get $20
      i32.eqz
      if $if_0
        block $block_0
          block $block_1
            block $block_2
              local.get $0
              local.get $1
              i32.ne
              if $if_1
                local.get $0
                i32.eqz
                br_if $block_1
                local.get $0
                local.set $2
                loop $loop
                  local.get $2
                  i32.load
                  local.get $1
                  i32.eq
                  br_if $block_2
                  local.get $2
                  i32.load
                  local.tee $2
                  br_if $loop
                end ;; $loop
                br $block_1
              end ;; $if_1
              local.get $0
              i32.eqz
              br_if $block_0
              local.get $0
              i32.load
              return
            end ;; $block_2
            local.get $1
            i32.eqz
            br_if $block_0
            local.get $2
            local.get $1
            i32.load
            i32.store
          end ;; $block_1
          local.get $0
          return
        end ;; $block_0
      end ;; $if_0
      local.get $3
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        call $runtime.nilPanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        unreachable
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*runtime.channel_rparen_.pop (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if
      global.get $20
      i32.const 1
      local.get $0
      select
      i32.eqz
      if $if_0
        local.get $0
        i32.load offset=24
        local.tee $3
        if $if_1
          local.get $1
          local.get $0
          i32.load offset=28
          local.get $0
          i32.load
          local.tee $2
          local.get $0
          i32.load offset=20
          i32.mul
          i32.add
          local.tee $1
          local.get $2
          call $memcpy
          drop
          local.get $1
          i32.const 0
          local.get $0
          i32.load
          call $memset
          drop
          local.get $0
          local.get $0
          i32.load offset=24
          i32.const 1
          i32.sub
          i32.store offset=24
          local.get $0
          i32.load offset=20
          i32.const 1
          i32.add
          local.tee $1
          local.get $0
          i32.load offset=4
          i32.eq
          local.set $2
          local.get $0
          i32.const 0
          local.get $1
          local.get $2
          select
          i32.store offset=20
        end ;; $if_1
        local.get $3
        i32.const 0
        i32.ne
        return
      end ;; $if_0
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        call $runtime.nilPanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        unreachable
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*runtime.channel_rparen_.push (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if
      global.get $20
      i32.const 1
      local.get $0
      select
      i32.eqz
      if $if_0
        block $block_0
          local.get $0
          i32.load offset=4
          local.tee $2
          i32.eqz
          br_if $block_0
          local.get $0
          i32.load offset=24
          local.get $2
          i32.eq
          br_if $block_0
          local.get $0
          i32.load offset=28
          local.get $0
          i32.load
          local.tee $2
          local.get $0
          i32.load offset=16
          i32.mul
          i32.add
          local.get $1
          local.get $2
          call $memcpy
          drop
          local.get $0
          local.get $0
          i32.load offset=24
          i32.const 1
          i32.add
          i32.store offset=24
          local.get $0
          i32.const 0
          local.get $0
          i32.load offset=16
          i32.const 1
          i32.add
          local.tee $2
          local.get $2
          local.get $0
          i32.load offset=4
          i32.eq
          select
          i32.store offset=16
        end ;; $block_0
        return
      end ;; $if_0
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        call $runtime.nilPanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        unreachable
      end ;; $if_2
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*runtime.channel_rparen_.resumeRX (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $1
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      local.get $1
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $1
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $1
          br_if $block_0
          local.get $0
          i32.load offset=12
          local.tee $1
          i32.eqz
          br_if $block_0
          local.get $0
          local.get $1
          i32.load
          i32.store offset=12
          local.get $1
          i32.eqz
          br_if $block_0
          local.get $1
          i32.load offset=4
          local.tee $2
          i32.eqz
          br_if $block_0
          local.get $2
          i32.load offset=4
          i32.const 0
          local.get $0
          i32.load
          call $memset
          local.set $2
          local.get $1
          i32.load offset=4
          local.tee $0
          i32.eqz
          br_if $block_0
          local.get $0
          i64.const 0
          i64.store offset=8
          local.get $1
          i32.load offset=8
          i32.eqz
          local.set $0
        end ;; $if_1
        block $block_1
          global.get $20
          i32.eqz
          if $if_2
            local.get $0
            br_if $block_1
            local.get $1
            i32.load offset=4
            local.tee $0
            i32.eqz
            br_if $block_0
            local.get $0
            local.get $1
            i32.load offset=8
            i32.store offset=4
          end ;; $if_2
          local.get $3
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_3
            local.get $1
            call $_lparen_*runtime.channelBlockedList_rparen_.detach
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_4
          local.get $1
          i32.load offset=4
          local.set $0
        end ;; $if_4
        local.get $3
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_5
          i32.const 66832
          local.get $0
          call $_lparen_*internal/task.Queue_rparen_.Push
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_5
        global.get $20
        i32.eqz
        if $if_6
          local.get $2
          return
        end ;; $if_6
      end ;; $block_0
      local.get $3
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_7
        call $runtime.nilPanic
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_7
      global.get $20
      i32.eqz
      if $if_8
        unreachable
      end ;; $if_8
      unreachable
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*runtime.channel_rparen_.resumeTX (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      local.get $1
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $1
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $1
          br_if $block_0
          local.get $0
          i32.load offset=12
          local.tee $1
          i32.eqz
          br_if $block_0
          local.get $0
          local.get $1
          i32.load
          i32.store offset=12
          local.get $1
          i32.eqz
          br_if $block_0
          local.get $1
          i32.load offset=4
          local.tee $0
          i32.eqz
          br_if $block_0
          local.get $1
          i32.load offset=8
          local.set $3
        end ;; $if_1
        block $block_1
          global.get $20
          i32.eqz
          if $if_2
            local.get $3
            i32.eqz
            if $if_3
              local.get $0
              i32.load offset=4
              local.set $0
              br $block_1
            end ;; $if_3
            local.get $1
            i32.load offset=8
            local.tee $0
            i32.eqz
            br_if $block_0
            local.get $1
            i32.load offset=4
            local.tee $3
            i32.eqz
            br_if $block_0
            local.get $0
            i32.load offset=4
            local.set $0
            local.get $3
            local.get $1
            i32.load offset=8
            i32.store offset=4
          end ;; $if_2
          local.get $2
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_4
            local.get $1
            call $_lparen_*runtime.channelBlockedList_rparen_.detach
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_4
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_5
          local.get $1
          i32.load offset=4
          local.set $1
        end ;; $if_5
        local.get $2
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_6
          i32.const 66832
          local.get $1
          call $_lparen_*internal/task.Queue_rparen_.Push
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_6
        global.get $20
        i32.eqz
        if $if_7
          local.get $0
          return
        end ;; $if_7
      end ;; $block_0
      local.get $2
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_8
        call $runtime.nilPanic
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_8
      global.get $20
      i32.eqz
      if $if_9
        unreachable
      end ;; $if_9
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*runtime.channel_rparen_.tryRecv (type $5)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $4
      i32.load
      local.set $0
      local.get $4
      i32.load offset=8
      local.set $2
      local.get $4
      i32.load offset=12
      local.set $3
      local.get $4
      i32.load offset=16
      local.set $5
      local.get $4
      i32.load offset=20
      local.set $7
      local.get $4
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      local.get $3
      local.get $1
      i32.eqz
      global.get $20
      select
      local.set $3
      block $block_0
        block $block_1
          global.get $20
          i32.eqz
          if $if_1
            local.get $3
            br_if $block_1
            i32.const 0
            local.set $5
            local.get $1
            i32.load8_u offset=8
            local.set $7
            i32.const 0
            local.set $3
          end ;; $if_1
          block $block_2
            block $block_3
              block $block_4
                block $block_5
                  global.get $20
                  i32.eqz
                  if $if_2
                    block $block_6
                      local.get $7
                      br_table
                        $block_0 $block_0 $block_5 $block_5 $block_4
                        $block_6 ;; default
                    end ;; $block_6
                  end ;; $if_2
                  local.get $6
                  i32.const 0
                  global.get $20
                  select
                  i32.eqz
                  if $if_3
                    i32.const 65964
                    i32.const 21
                    call $runtime.runtimePanic
                    i32.const 0
                    global.get $20
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_3
                  global.get $20
                  i32.eqz
                  if $if_4
                    unreachable
                  end ;; $if_4
                end ;; $block_5
                local.get $6
                i32.const 1
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_5
                  local.get $1
                  local.get $2
                  call $_lparen_*runtime.channel_rparen_.pop
                  local.set $4
                  i32.const 1
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                  local.get $4
                  local.set $5
                end ;; $if_5
                global.get $20
                i32.eqz
                if $if_6
                  local.get $1
                  i32.load offset=12
                  local.set $3
                  local.get $5
                  i32.const 1
                  i32.and
                  local.tee $5
                  br_if $block_3
                  local.get $3
                  i32.eqz
                  local.tee $3
                  br_if $block_1
                end ;; $if_6
                local.get $6
                i32.const 2
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_7
                  local.get $1
                  call $_lparen_*runtime.channel_rparen_.resumeTX
                  local.set $4
                  i32.const 2
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                  local.get $4
                  local.set $3
                end ;; $if_7
                global.get $20
                i32.eqz
                if $if_8
                  local.get $2
                  local.get $3
                  local.get $1
                  i32.load
                  call $memcpy
                  drop
                  i32.const 1
                  local.set $3
                  i32.const 1
                  local.set $5
                  local.get $1
                  i32.load offset=12
                  br_if $block_0
                  local.get $1
                  i32.const 0
                  i32.store8 offset=8
                  br $block_2
                end ;; $if_8
              end ;; $block_4
              global.get $20
              i32.eqz
              if $if_9
                i32.const 1
                local.set $5
                i32.const 1
                local.set $3
              end ;; $if_9
              local.get $6
              i32.const 3
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_10
                local.get $1
                local.get $2
                call $_lparen_*runtime.channel_rparen_.pop
                local.set $4
                i32.const 3
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $4
                local.set $7
              end ;; $if_10
              global.get $20
              i32.eqz
              if $if_11
                local.get $7
                i32.const 1
                i32.and
                br_if $block_0
                i32.const 0
                local.set $5
                local.get $2
                i32.const 0
                local.get $1
                i32.load
                call $memset
                drop
                i32.const 1
                local.set $3
                br $block_0
              end ;; $if_11
            end ;; $block_3
            block $block_7
              global.get $20
              i32.const 1
              local.get $2
              local.get $3
              i32.eqz
              global.get $20
              select
              local.tee $2
              select
              i32.eqz
              br_if $block_7
              local.get $6
              i32.const 4
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_12
                local.get $1
                call $_lparen_*runtime.channel_rparen_.resumeTX
                local.set $4
                i32.const 4
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $4
                local.set $2
              end ;; $if_12
              local.get $6
              i32.const 5
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_13
                local.get $1
                local.get $2
                call $_lparen_*runtime.channel_rparen_.push
                i32.const 5
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_13
              global.get $20
              i32.eqz
              if $if_14
                local.get $1
                i32.load offset=12
                br_if $block_7
                local.get $1
                i32.const 3
                i32.store8 offset=8
              end ;; $if_14
            end ;; $block_7
            global.get $20
            i32.eqz
            if $if_15
              i32.const 1
              local.set $3
              i32.const 1
              local.set $5
              local.get $1
              i32.load offset=24
              br_if $block_0
              local.get $1
              i32.const 0
              i32.store8 offset=8
            end ;; $if_15
          end ;; $block_2
          global.get $20
          i32.eqz
          if $if_16
            i32.const 1
            local.set $3
            i32.const 1
            local.set $5
            br $block_0
          end ;; $if_16
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_17
          i32.const 0
          local.set $5
          i32.const 0
          local.set $3
        end ;; $if_17
      end ;; $block_0
      global.get $20
      i32.eqz
      if $if_18
        local.get $0
        local.get $3
        i32.const 1
        i32.and
        i32.store8
        local.get $0
        local.get $5
        i32.const 1
        i32.and
        i32.store8 offset=1
      end ;; $if_18
      return
    end ;; $block
    local.set $4
    global.get $21
    i32.load
    local.get $4
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $4
    local.get $0
    i32.store
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $4
    local.get $2
    i32.store offset=8
    local.get $4
    local.get $3
    i32.store offset=12
    local.get $4
    local.get $5
    i32.store offset=16
    local.get $4
    local.get $7
    i32.store offset=20
    global.get $21
    global.get $21
    i32.load
    i32.const 24
    i32.add
    i32.store
    )
  
  (func $runtime.chanMake (type $6)
    (result i32)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $0
      i32.load
      local.set $2
      local.get $0
      i32.load offset=8
      local.set $3
      local.get $0
      i32.load offset=12
      local.set $4
      local.get $0
      i32.load offset=16
      local.set $5
      local.get $0
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $2
        global.set $19
        local.get $2
        i32.const 12
        i32.add
        local.tee $5
        i32.const 0
        i32.store
        local.get $2
        i64.const 2
        i64.store offset=4 align=4
        i32.const 66844
        i32.load
        local.set $4
        i32.const 66844
        local.get $2
        i32.store
        local.get $2
        local.get $4
        i32.store
        local.get $2
        i32.const 8
        i32.add
        local.set $1
      end ;; $if_1
      local.get $6
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        i32.const 32
        i32.const 8721
        call $runtime.alloc
        local.set $0
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $0
        local.set $3
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $1
        local.get $3
        i32.store
      end ;; $if_3
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        i32.const 1
        i32.const 0
        call $runtime.alloc
        local.set $0
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $0
        local.set $1
      end ;; $if_4
      global.get $20
      i32.eqz
      if $if_5
        i32.const 66844
        local.get $4
        i32.store
        local.get $5
        local.get $1
        i32.store
        local.get $3
        local.get $1
        i32.store offset=28
        local.get $3
        i64.const 4294967297
        i64.store align=4
        local.get $2
        i32.const 16
        i32.add
        global.set $19
        local.get $3
        return
      end ;; $if_5
      unreachable
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $0
    local.get $2
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $3
    i32.store offset=8
    local.get $0
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $5
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime.deadlock (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $0
      end ;; $if
      local.get $0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        call $internal/task.Pause
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      local.get $0
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_1
        i32.const 66184
        call $runtime._panic
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        unreachable
      end ;; $if_2
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.printitf (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        local.get $0
        i32.load
        local.set $1
        local.get $0
        i32.load offset=4
        local.set $0
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $1
        local.get $0
        call $runtime.printstring
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.printint32 (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      local.get $2
      local.get $0
      i32.const 0
      i32.ge_s
      global.get $20
      select
      i32.and
      i32.eqz
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          i32.const 45
          call $runtime.putchar
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        local.get $0
        i32.const 0
        local.get $0
        i32.sub
        global.get $20
        select
        local.set $0
      end ;; $if_1
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        local.get $0
        call $runtime.printuint32
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.printuint32 (type $0)
    (param $0 i32)
    (local $1 i64)
    (local $2 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i64)
        global.get $21
        global.get $21
        i32.load
        i32.const 8
        i32.sub
        i32.store
        global.get $21
        i32.load
        i64.load align=4
      else
        local.get $1
      end ;; $if
      local.get $0
      i64.extend_i32_u
      global.get $20
      select
      local.set $1
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $2
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        local.get $1
        call $runtime.printuint64
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $1
    i64.store align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.printint64 (type $8)
    (param $0 i64)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      i64.load align=4
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      local.get $2
      local.get $0
      i64.const 0
      i64.ge_s
      global.get $20
      select
      i32.and
      i32.eqz
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          i32.const 45
          call $runtime.putchar
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        local.get $0
        i64.const 0
        local.get $0
        i64.sub
        global.get $20
        select
        local.set $0
      end ;; $if_1
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        local.get $0
        call $runtime.printuint64
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i64.store align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.printuint64 (type $8)
    (param $0 i64)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $1
      local.get $2
      i32.load offset=4
      local.set $3
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $5
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $3
        global.set $19
        local.get $3
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get $3
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get $3
        i64.const 0
        i64.store offset=8
        i32.const 19
        local.set $1
        i32.const 19
        local.set $2
        loop $loop
          local.get $3
          i32.const 8
          i32.add
          local.get $1
          i32.add
          local.get $0
          local.get $0
          i64.const 10
          i64.div_u
          local.tee $0
          i64.const 10
          i64.mul
          i64.sub
          i32.wrap_i64
          i32.const 48
          i32.or
          local.tee $4
          i32.store8
          local.get $2
          local.get $1
          local.get $4
          i32.const 255
          i32.and
          i32.const 48
          i32.eq
          select
          local.set $2
          local.get $1
          i32.const 0
          i32.gt_s
          local.set $4
          local.get $1
          i32.const 1
          i32.sub
          local.set $1
          local.get $4
          br_if $loop
        end ;; $loop
        local.get $2
        i32.const 19
        i32.gt_s
        local.set $1
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $1
      select
      if $if_2
        loop $loop_0
          global.get $20
          i32.eqz
          if $if_3
            local.get $2
            local.get $3
            i32.const 8
            i32.add
            i32.add
            i32.load8_u
            local.set $1
          end ;; $if_3
          local.get $5
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_4
            local.get $1
            call $runtime.putchar
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_4
          global.get $20
          i32.eqz
          if $if_5
            local.get $2
            i32.const 1
            i32.add
            local.tee $2
            i32.const 20
            i32.ne
            local.tee $1
            br_if $loop_0
          end ;; $if_5
        end ;; $loop_0
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_6
        local.get $3
        i32.const 32
        i32.add
        global.set $19
      end ;; $if_6
      return
    end ;; $block
    local.set $4
    global.get $21
    i32.load
    local.get $4
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $4
    local.get $1
    i32.store
    local.get $4
    local.get $3
    i32.store offset=4
    local.get $4
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.chanRecv (type $5)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $5
      local.get $3
      i32.load offset=16
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $3
        global.set $19
      end ;; $if_1
      local.get $4
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $3
        local.get $0
        local.get $1
        call $_lparen_*runtime.channel_rparen_.tryRecv
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $3
        i32.load8_u
        local.set $5
      end ;; $if_3
      block $block_0
        block $block_1
          block $block_2
            global.get $20
            i32.eqz
            if $if_4
              local.get $5
              br_if $block_2
              local.get $0
              i32.eqz
              br_if $block_1
              call $internal/task.Current
              local.set $5
              local.get $0
              i32.const 1
              i32.store8 offset=8
              local.get $5
              i32.eqz
              br_if $block_0
              local.get $5
              i64.const 1
              i64.store offset=8
              local.get $5
              local.get $1
              i32.store offset=4
              local.get $3
              i32.const 16
              i32.add
              i64.const 0
              i64.store
              local.get $3
              i32.const 24
              i32.add
              i64.const 0
              i64.store
              local.get $3
              i64.const 0
              i64.store offset=8
              local.get $2
              i32.eqz
              br_if $block_0
              local.get $0
              i32.load offset=12
              local.set $1
              local.get $2
              i64.const 0
              i64.store align=4
              local.get $2
              i32.const 16
              i32.add
              i64.const 0
              i64.store align=4
              local.get $2
              i32.const 8
              i32.add
              i64.const 0
              i64.store align=4
              local.get $2
              local.get $5
              i32.store offset=4
              local.get $2
              local.get $1
              i32.store
              local.get $0
              local.get $2
              i32.store offset=12
            end ;; $if_4
            local.get $4
            i32.const 1
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_5
              call $internal/task.Pause
              i32.const 1
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_5
            global.get $20
            i32.eqz
            if $if_6
              local.get $5
              i64.const 0
              i64.store offset=8
              local.get $5
              i32.const 0
              i32.store offset=4
            end ;; $if_6
          end ;; $block_2
          global.get $20
          i32.eqz
          if $if_7
            local.get $3
            i32.const 32
            i32.add
            global.set $19
            return
          end ;; $if_7
        end ;; $block_1
        local.get $4
        i32.const 2
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_8
          call $runtime.deadlock
          i32.const 2
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_8
        global.get $20
        i32.eqz
        if $if_9
          unreachable
        end ;; $if_9
      end ;; $block_0
      local.get $4
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_10
        call $runtime.nilPanic
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_10
      global.get $20
      i32.eqz
      if $if_11
        unreachable
      end ;; $if_11
      return
    end ;; $block
    local.set $4
    global.get $21
    i32.load
    local.get $4
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $4
    local.get $0
    i32.store
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $4
    local.get $2
    i32.store offset=8
    local.get $4
    local.get $5
    i32.store offset=12
    local.get $4
    local.get $3
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    )
  
  (func $runtime.chanClose (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          i32.const 65985
          i32.const 20
          call $runtime.runtimePanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_4
        local.get $0
        i32.load8_u offset=8
        i32.const 1
        i32.sub
        local.set $2
      end ;; $if_4
      block $block_0
        block $block_1
          block $block_2
            global.get $20
            i32.eqz
            if $if_5
              block $block_3
                local.get $2
                br_table
                  $block_3 $block_1 $block_2 $block_0
                  $block_2 ;; default
              end ;; $block_3
              local.get $0
              i32.const 4
              i32.store8 offset=8
              local.get $0
              i32.load offset=12
              i32.eqz
              br_if $block_2
            end ;; $if_5
            loop $loop
              local.get $1
              i32.const 1
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_6
                local.get $0
                call $_lparen_*runtime.channel_rparen_.resumeRX
                drop
                i32.const 1
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_6
              global.get $20
              i32.eqz
              if $if_7
                local.get $0
                i32.load offset=12
                br_if $loop
              end ;; $if_7
            end ;; $loop
          end ;; $block_2
          global.get $20
          i32.eqz
          if $if_8
            local.get $0
            i32.const 4
            i32.store8 offset=8
            return
          end ;; $if_8
        end ;; $block_1
        local.get $1
        i32.const 2
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_9
          i32.const 66028
          i32.const 25
          call $runtime.runtimePanic
          i32.const 2
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_9
        global.get $20
        i32.eqz
        if $if_10
          unreachable
        end ;; $if_10
      end ;; $block_0
      local.get $1
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_11
        i32.const 66005
        i32.const 23
        call $runtime.runtimePanic
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_11
      global.get $20
      i32.eqz
      if $if_12
        unreachable
      end ;; $if_12
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.GC (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        call $runtime.gcRun
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.gcRun (type $1)
    (local $0 i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66948
        i32.load
        local.set $0
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $0
        call $_lparen_*github.com/moontrade/nogc.gc_rparen_.Collect
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.initHeap (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $2
      local.get $1
      i32.load offset=4
      local.set $3
      local.get $1
      i32.load offset=8
      local.set $4
      local.get $1
      i32.load offset=12
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $0
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $2
        global.set $19
        local.get $2
        i32.const 12
        i32.add
        local.tee $1
        i32.const 0
        i32.store
        local.get $2
        i64.const 2
        i64.store offset=4 align=4
        i32.const 66844
        i32.load
        local.set $4
        i32.const 66844
        local.get $2
        i32.store
        local.get $2
        local.get $4
        i32.store
        i32.const 66552
        i32.load
        local.set $3
      end ;; $if_1
      local.get $0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $3
        call $runtime.gcInitHeap
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $0
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        i32.const 66832
        i32.const 1
        call $runtime.gcRegisterGlobal
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      local.get $0
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        i32.const 66840
        i32.const 2
        call $runtime.gcRegisterGlobal
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      global.get $20
      i32.eqz
      if $if_5
        local.get $2
        i32.const 8
        i32.add
        call $internal/task.Current
        local.tee $3
        i32.store
        local.get $1
        local.get $3
        i32.store
        i32.const 66844
        local.get $4
        i32.store
      end ;; $if_5
      local.get $0
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_6
        local.get $3
        i32.const 3
        call $runtime.gcRegisterGlobal
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_6
      local.get $0
      i32.const 4
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_7
        i32.const 66552
        i32.const 4
        call $runtime.gcRegisterGlobal
        i32.const 4
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_7
      local.get $0
      i32.const 5
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_8
        i32.const 66580
        i32.const 5
        call $runtime.gcRegisterGlobal
        i32.const 5
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_8
      local.get $0
      i32.const 6
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_9
        i32.const 66556
        i32.const 6
        call $runtime.gcRegisterGlobal
        i32.const 6
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_9
      local.get $0
      i32.const 7
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_10
        i32.const 66560
        i32.const 7
        call $runtime.gcRegisterGlobal
        i32.const 7
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_10
      global.get $20
      i32.eqz
      if $if_11
        local.get $2
        i32.const 16
        i32.add
        global.set $19
      end ;; $if_11
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $0
    local.get $2
    i32.store
    local.get $0
    local.get $3
    i32.store offset=4
    local.get $0
    local.get $4
    i32.store offset=8
    local.get $0
    local.get $1
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    )
  
  (func $runtime.gcInitHeap (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $3
      local.get $2
      i32.load offset=8
      local.set $4
      local.get $2
      i32.load offset=12
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $3
        global.set $19
        local.get $3
        i32.const 8
        i32.add
        i32.const 66944
        i32.load
        local.tee $4
        i32.store
        local.get $3
        i32.const 0
        i32.store offset=12
        local.get $3
        i32.const 2
        i32.store offset=4
        i32.const 66844
        i32.load
        local.set $2
        i32.const 66844
        local.get $3
        i32.store
        local.get $3
        local.get $2
        i32.store
      end ;; $if_1
      block $block_0
        global.get $20
        i32.const 1
        local.get $4
        select
        if $if_2
          local.get $1
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_3
            local.get $0
            call $runtime.initAllocator
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          global.get $20
          i32.eqz
          br_if $block_0
        end ;; $if_2
        local.get $1
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_4
          i32.const 66468
          i32.const 32
          call $runtime.printstring
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_4
        local.get $1
        i32.const 2
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_5
          call $runtime.printnl
          i32.const 2
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_5
      end ;; $block_0
      local.get $1
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_6
        call $github.com/moontrade/nogc.getCollector
        local.set $1
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $4
      end ;; $if_6
      global.get $20
      i32.eqz
      if $if_7
        i32.const 66844
        local.get $2
        i32.store
        local.get $3
        i32.const 12
        i32.add
        local.get $4
        i32.store
        local.get $3
        i32.const 16
        i32.add
        global.set $19
      end ;; $if_7
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $1
    local.get $4
    i32.store offset=8
    local.get $1
    local.get $2
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    )
  
  (func $runtime.gcRegisterGlobal (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=8
      local.set $3
      local.get $2
      i32.load offset=12
      local.set $4
      local.get $2
      i32.load offset=16
      local.set $6
      local.get $2
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $5
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 48
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i32.const 0
        i32.store offset=44
        local.get $4
        i64.const 0
        i64.store offset=36 align=4
        local.get $4
        i64.const 0
        i64.store offset=28 align=4
        local.get $4
        i64.const 0
        i64.store offset=20 align=4
        local.get $4
        i64.const 8
        i64.store offset=12 align=4
        i32.const 66844
        i32.load
        local.set $6
        i32.const 66844
        local.get $4
        i32.const 8
        i32.add
        local.tee $3
        i32.store
        local.get $4
        local.get $6
        i32.store offset=8
        local.get $1
        i32.const 1
        i32.sub
        local.set $1
      end ;; $if_1
      block $block_0
        block $block_1
          block $block_2
            block $block_3
              block $block_4
                block $block_5
                  block $block_6
                    block $block_7
                      block $block_8
                        block $block_9
                          global.get $20
                          i32.eqz
                          if $if_2
                            block $block_10
                              local.get $1
                              br_table
                                $block_10 $block_9 $block_8 $block_7 $block_6 $block_5 $block_4 $block_3
                                $block_0 ;; default
                            end ;; $block_10
                            local.get $4
                            i32.const 16
                            i32.add
                            local.set $3
                          end ;; $if_2
                          local.get $5
                          i32.const 0
                          global.get $20
                          select
                          i32.eqz
                          if $if_3
                            call $github.com/moontrade/nogc.getCollector
                            local.set $2
                            i32.const 0
                            global.get $20
                            i32.const 1
                            i32.eq
                            br_if $block
                            drop
                            local.get $2
                            local.set $1
                          end ;; $if_3
                          global.get $20
                          i32.eqz
                          if $if_4
                            local.get $3
                            local.get $1
                            i32.store
                            local.get $1
                            i32.eqz
                            br_if $block_2
                            local.get $1
                            i32.const 44
                            i32.add
                            local.set $1
                            br $block_1
                          end ;; $if_4
                        end ;; $block_9
                        local.get $3
                        local.get $4
                        i32.const 20
                        i32.add
                        global.get $20
                        select
                        local.set $3
                        local.get $5
                        i32.const 1
                        i32.eq
                        i32.const 1
                        global.get $20
                        select
                        if $if_5
                          call $github.com/moontrade/nogc.getCollector
                          local.set $2
                          i32.const 1
                          global.get $20
                          i32.const 1
                          i32.eq
                          br_if $block
                          drop
                          local.get $2
                          local.set $1
                        end ;; $if_5
                        global.get $20
                        i32.eqz
                        if $if_6
                          local.get $3
                          local.get $1
                          i32.store
                          local.get $1
                          i32.eqz
                          br_if $block_2
                          local.get $1
                          i32.const 40
                          i32.add
                          local.set $1
                          br $block_1
                        end ;; $if_6
                      end ;; $block_8
                      local.get $3
                      local.get $4
                      i32.const 24
                      i32.add
                      global.get $20
                      select
                      local.set $3
                      local.get $5
                      i32.const 2
                      i32.eq
                      i32.const 1
                      global.get $20
                      select
                      if $if_7
                        call $github.com/moontrade/nogc.getCollector
                        local.set $2
                        i32.const 2
                        global.get $20
                        i32.const 1
                        i32.eq
                        br_if $block
                        drop
                        local.get $2
                        local.set $1
                      end ;; $if_7
                      global.get $20
                      i32.eqz
                      if $if_8
                        local.get $3
                        local.get $1
                        i32.store
                        local.get $1
                        i32.eqz
                        br_if $block_2
                        local.get $1
                        i32.const 48
                        i32.add
                        local.set $1
                        br $block_1
                      end ;; $if_8
                    end ;; $block_7
                    local.get $3
                    local.get $4
                    i32.const 28
                    i32.add
                    global.get $20
                    select
                    local.set $3
                    local.get $5
                    i32.const 3
                    i32.eq
                    i32.const 1
                    global.get $20
                    select
                    if $if_9
                      call $github.com/moontrade/nogc.getCollector
                      local.set $2
                      i32.const 3
                      global.get $20
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                      local.get $2
                      local.set $1
                    end ;; $if_9
                    global.get $20
                    i32.eqz
                    if $if_10
                      local.get $3
                      local.get $1
                      i32.store
                      local.get $1
                      i32.eqz
                      br_if $block_2
                      local.get $1
                      i32.const 52
                      i32.add
                      local.set $1
                      br $block_1
                    end ;; $if_10
                  end ;; $block_6
                  local.get $3
                  local.get $4
                  i32.const 32
                  i32.add
                  global.get $20
                  select
                  local.set $3
                  local.get $5
                  i32.const 4
                  i32.eq
                  i32.const 1
                  global.get $20
                  select
                  if $if_11
                    call $github.com/moontrade/nogc.getCollector
                    local.set $2
                    i32.const 4
                    global.get $20
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                    local.get $2
                    local.set $1
                  end ;; $if_11
                  global.get $20
                  i32.eqz
                  if $if_12
                    local.get $3
                    local.get $1
                    i32.store
                    local.get $1
                    i32.eqz
                    br_if $block_2
                    local.get $1
                    i32.const 56
                    i32.add
                    local.set $1
                    br $block_1
                  end ;; $if_12
                end ;; $block_5
                local.get $3
                local.get $4
                i32.const 36
                i32.add
                global.get $20
                select
                local.set $3
                local.get $5
                i32.const 5
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_13
                  call $github.com/moontrade/nogc.getCollector
                  local.set $2
                  i32.const 5
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                  local.get $2
                  local.set $1
                end ;; $if_13
                global.get $20
                i32.eqz
                if $if_14
                  local.get $3
                  local.get $1
                  i32.store
                  local.get $1
                  i32.eqz
                  br_if $block_2
                  local.get $1
                  i32.const 60
                  i32.add
                  local.set $1
                  br $block_1
                end ;; $if_14
              end ;; $block_4
              local.get $3
              local.get $4
              i32.const 40
              i32.add
              global.get $20
              select
              local.set $3
              local.get $5
              i32.const 6
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_15
                call $github.com/moontrade/nogc.getCollector
                local.set $2
                i32.const 6
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $2
                local.set $1
              end ;; $if_15
              global.get $20
              i32.eqz
              if $if_16
                local.get $3
                local.get $1
                i32.store
                local.get $1
                i32.eqz
                br_if $block_2
                local.get $1
                i32.const -64
                i32.sub
                local.set $1
                br $block_1
              end ;; $if_16
            end ;; $block_3
            local.get $3
            local.get $4
            i32.const 44
            i32.add
            global.get $20
            select
            local.set $3
            local.get $5
            i32.const 7
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_17
              call $github.com/moontrade/nogc.getCollector
              local.set $2
              i32.const 7
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $2
              local.set $1
            end ;; $if_17
            global.get $20
            i32.eqz
            if $if_18
              local.get $3
              local.get $1
              i32.store
              local.get $1
              i32.eqz
              br_if $block_2
              local.get $1
              i32.const 68
              i32.add
              local.set $1
              br $block_1
            end ;; $if_18
          end ;; $block_2
          local.get $5
          i32.const 8
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_19
            call $runtime.nilPanic
            i32.const 8
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_19
          global.get $20
          i32.eqz
          if $if_20
            unreachable
          end ;; $if_20
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_21
          local.get $1
          local.get $0
          i32.store
        end ;; $if_21
      end ;; $block_0
      global.get $20
      i32.eqz
      if $if_22
        i32.const 66844
        local.get $6
        i32.store
        local.get $4
        i32.const 48
        i32.add
        global.set $19
      end ;; $if_22
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $3
    i32.store offset=8
    local.get $2
    local.get $4
    i32.store offset=12
    local.get $2
    local.get $6
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    )
  
  (func $runtime.markScheduler (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $2
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $4
        global.set $19
        call $internal/task.Current
        local.set $0
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        i32.const 66053
        i32.const 11
        call $runtime.printstring
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        call $runtime.printspace
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      local.get $1
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        local.get $0
        call $runtime.printuint32
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      local.get $1
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        call $runtime.printnl
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $20
      i32.eqz
      if $if_6
        call $internal/task.Current
        local.set $0
      end ;; $if_6
      local.get $1
      i32.const 4
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_7
        i32.const 0
        local.get $0
        call $runtime.gcMarkTask
        i32.const 4
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_7
      global.get $20
      i32.eqz
      if $if_8
        i32.const 66840
        i32.load
        i32.eqz
        local.set $0
      end ;; $if_8
      block $block_0
        block $block_1
          global.get $20
          i32.eqz
          if $if_9
            local.get $0
            br_if $block_1
            i32.const 66840
            local.set $0
          end ;; $if_9
          loop $loop
            global.get $20
            i32.eqz
            if $if_10
              local.get $0
              i32.load
              local.set $2
            end ;; $if_10
            local.get $1
            i32.const 5
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_11
              i32.const 66064
              i32.const 18
              call $runtime.printstring
              i32.const 5
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_11
            local.get $1
            i32.const 6
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_12
              call $runtime.printspace
              i32.const 6
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_12
            local.get $1
            i32.const 7
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_13
              local.get $2
              call $runtime.printuint32
              i32.const 7
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_13
            local.get $1
            i32.const 8
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_14
              call $runtime.printnl
              i32.const 8
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_14
            global.get $20
            i32.eqz
            if $if_15
              local.get $0
              i32.load
              local.set $3
              i32.const 66840
              i32.load
              local.set $2
            end ;; $if_15
            local.get $1
            i32.const 9
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_16
              local.get $2
              local.get $3
              call $runtime.gcMarkTask
              i32.const 9
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_16
            global.get $20
            i32.eqz
            if $if_17
              local.get $0
              i32.load
              local.tee $0
              i32.eqz
              br_if $block_0
              local.get $0
              i32.load
              local.tee $2
              br_if $loop
            end ;; $if_17
          end ;; $loop
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_18
          local.get $4
          i64.const 0
          i64.store offset=8
        end ;; $if_18
        loop $loop_0
          global.get $20
          i32.eqz
          if $if_19
            call $_lparen_*internal/task.Queue_rparen_.Empty
            i32.const 1
            i32.and
            if $if_20
              call $_lparen_*internal/task.Queue_rparen_.Empty
              i32.const 1
              i32.and
              i32.eqz
              local.tee $0
              br_if $loop_0
              i32.const 66832
              local.get $4
              i64.load offset=8
              i64.store
              local.get $4
              i32.const 16
              i32.add
              global.set $19
              return
            end ;; $if_20
            call $_lparen_*internal/task.Queue_rparen_.Pop
            local.set $0
          end ;; $if_19
          local.get $1
          i32.const 10
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_21
            i32.const 66832
            local.get $0
            call $runtime.gcMarkTask
            i32.const 10
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_21
          local.get $2
          local.get $4
          i32.const 8
          i32.add
          global.get $20
          select
          local.set $2
          local.get $1
          i32.const 11
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_22
            local.get $2
            local.get $0
            call $_lparen_*internal/task.Queue_rparen_.Push
            i32.const 11
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_22
          global.get $20
          i32.eqz
          br_if $loop_0
        end ;; $loop_0
      end ;; $block_0
      local.get $1
      i32.const 12
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_23
        call $runtime.nilPanic
        i32.const 12
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_23
      global.get $20
      i32.eqz
      if $if_24
        unreachable
      end ;; $if_24
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $4
    i32.store offset=8
    local.get $1
    local.get $3
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    )
  
  (func $runtime.gcMarkTask (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66944
        i32.load
        local.tee $3
        i32.eqz
        local.set $4
      end ;; $if_1
      block $block_0
        global.get $20
        i32.eqz
        if $if_2
          local.get $4
          br_if $block_0
          local.get $3
          i32.load offset=4
          local.set $3
        end ;; $if_2
        local.get $2
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          i32.const 66507
          i32.const 10
          call $runtime.printstring
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        local.get $2
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_4
          call $runtime.printspace
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_4
        local.get $2
        i32.const 2
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_5
          local.get $3
          call $runtime.printuint32
          i32.const 2
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_5
        local.get $2
        i32.const 3
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_6
          call $runtime.printspace
          i32.const 3
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_6
        local.get $2
        i32.const 4
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_7
          local.get $0
          call $runtime.printuint32
          i32.const 4
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        local.get $2
        i32.const 5
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_8
          call $runtime.printspace
          i32.const 5
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_8
        local.get $2
        i32.const 6
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_9
          local.get $1
          call $runtime.printuint32
          i32.const 6
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_9
        local.get $2
        i32.const 7
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_10
          call $runtime.printnl
          i32.const 7
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_10
        local.get $0
        local.get $1
        i32.eqz
        global.get $20
        select
        local.set $0
        block $block_1
          global.get $20
          i32.eqz
          if $if_11
            local.get $0
            br_if $block_1
            i32.const 66948
            i32.load
            local.set $0
          end ;; $if_11
          local.get $2
          i32.const 8
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_12
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoot
            i32.const 8
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_12
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_13
          return
        end ;; $if_13
      end ;; $block_0
      local.get $2
      i32.const 9
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_14
        call $runtime.nilPanic
        i32.const 9
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_14
      global.get $20
      i32.eqz
      if $if_15
        unreachable
      end ;; $if_15
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $3
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.markGlobals (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $0
      i32.load
      local.set $2
      local.get $0
      i32.load offset=4
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66556
        i32.load
        local.set $0
        i32.const 66560
        i32.load
        i32.const -4
        i32.and
        local.set $2
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $0
        local.get $2
        call $runtime.gcMarkGlobals
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $2
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.gcMarkGlobals (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $1
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66948
        i32.load
        local.set $2
      end ;; $if_1
      local.get $3
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $2
        local.get $0
        local.get $1
        call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoots
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.markStack (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $0
      i32.load
      local.set $2
      local.get $0
      i32.load offset=4
      local.set $3
      local.get $0
      i32.load offset=8
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          i32.const 66844
          i32.load
          local.tee $2
          i32.eqz
          local.tee $3
          br_if $block_0
        end ;; $if_1
        loop $loop
          global.get $20
          i32.eqz
          if $if_2
            local.get $2
            i32.const 8
            i32.add
            local.tee $3
            local.get $2
            i32.load offset=4
            i32.const 2
            i32.shl
            i32.add
            local.set $0
          end ;; $if_2
          local.get $1
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_3
            local.get $3
            local.get $0
            call $runtime.gcMarkStackObject
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          global.get $20
          i32.eqz
          if $if_4
            local.get $2
            i32.load
            local.tee $2
            br_if $loop
          end ;; $if_4
        end ;; $loop
      end ;; $block_0
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $2
    i32.store
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.gcMarkStackObject (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $1
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66948
        i32.load
        local.set $2
      end ;; $if_1
      local.get $3
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $2
        local.get $0
        local.get $1
        call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoots
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.divideByZeroPanic (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        i32.const 66152
        i32.const 14
        call $runtime.runtimePanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.nanotime (type $11)
    (result i64)
    (local $0 i64)
    (local $1 i64)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      i64.load align=4
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $2
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        call $runtime.ticks
        local.set $1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        local.get $0
        return
      end ;; $if_2
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i64.store align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    i64.const 0
    )
  
  (func $runtime.ticks (type $11)
    (result i64)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $0
      i32.load
      local.set $1
      local.get $0
      i32.load offset=4
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $1
        global.set $19
        local.get $1
        i64.const 0
        i64.store offset=8
        local.get $1
        i32.const 8
        i32.add
        local.set $0
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        i32.const 0
        i64.const 1000
        local.get $0
        call $runtime.clock_time_get
        drop
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $1
        i64.load offset=8
        local.set $3
        local.get $1
        i32.const 16
        i32.add
        global.set $19
        local.get $3
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $1
    i32.store
    local.get $2
    local.get $0
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    i64.const 0
    )
  
  (func $time.now (type $0)
    (param $0 i32)
    (local $1 i64)
    (local $2 i64)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $4
      i32.load
      local.set $0
      local.get $4
      i64.load offset=4 align=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $3
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        call $runtime.nanotime
        local.set $2
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $1
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        local.get $0
        local.get $1
        i64.store offset=16
        local.get $0
        local.get $1
        i64.const 1000000000
        i64.div_s
        local.tee $2
        i64.store
        local.get $0
        local.get $2
        i64.const -1000000000
        i64.mul
        local.get $1
        i64.add
        i64.store32 offset=8
      end ;; $if_2
      return
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i64.store offset=4 align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $_start (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $0
      end ;; $if
      global.get $20
      i32.eqz
      if $if_0
        i32.const 66552
        i32.const 66960
        i32.store
        i32.const 66580
        memory.size
        i32.const 16
        i32.shl
        i32.store
      end ;; $if_0
      local.get $0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        call $runtime.run
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.run (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $0
      end ;; $if
      local.get $0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        call $runtime.initHeap
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      local.get $0
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_1
        i32.const 2
        call $internal/task.start
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      local.get $0
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_2
        call $runtime.scheduler
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.run$1$gowrapper (type $0)
    (param $0 i32)
    (local $1 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        call $runtime.run$1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_1
        call $runtime.deadlock
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        unreachable
      end ;; $if_2
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.scheduler (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i64)
    (local $4 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i64.load offset=4 align=4
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66865
        i32.load8_u
        local.set $0
      end ;; $if_1
      block $block_0
        block $block_1
          global.get $20
          i32.eqz
          if $if_2
            local.get $0
            br_if $block_1
            i64.const 0
            local.set $3
          end ;; $if_2
          loop $loop
            global.get $20
            i32.eqz
            if $if_3
              i32.const 66840
              i32.load
              i32.eqz
              local.set $0
            end ;; $if_3
            i32.const 0
            global.get $20
            i32.const 1
            local.get $0
            select
            local.get $1
            i32.const 0
            global.get $20
            select
            select
            if $if_4
              call $runtime.ticks
              local.set $4
              i32.const 0
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $4
              local.set $3
            end ;; $if_4
            global.get $20
            i32.eqz
            if $if_5
              i32.const 66840
              i32.load
              i32.eqz
              local.set $0
            end ;; $if_5
            block $block_2
              global.get $20
              i32.eqz
              if $if_6
                local.get $0
                br_if $block_2
                i32.const 66840
                i32.load
                local.tee $0
                i32.eqz
                br_if $block_0
                local.get $0
                i64.load offset=8
                local.get $3
                i32.const 66872
                i64.load
                i64.sub
                i64.gt_s
                local.tee $0
                br_if $block_2
                i32.const 66840
                i32.load
                local.tee $0
                i32.eqz
                br_if $block_0
                i32.const 66872
                i32.const 66872
                i64.load
                local.get $0
                i64.load offset=8
                i64.add
                i64.store
                i32.const 66840
                local.get $0
                i32.load
                i32.store
                local.get $0
                i32.const 0
                i32.store
              end ;; $if_6
              local.get $1
              i32.const 1
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_7
                i32.const 66832
                local.get $0
                call $_lparen_*internal/task.Queue_rparen_.Push
                i32.const 1
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_7
            end ;; $block_2
            global.get $20
            i32.eqz
            if $if_8
              call $_lparen_*internal/task.Queue_rparen_.Pop
              local.set $0
            end ;; $if_8
            block $block_3
              global.get $20
              i32.eqz
              if $if_9
                local.get $0
                br_if $block_3
                i32.const 66840
                i32.load
                i32.eqz
                br_if $block_1
                i32.const 66840
                i32.load
                local.tee $0
                i32.eqz
                br_if $block_0
                i32.const 66872
                i64.load
                local.get $0
                i64.load offset=8
                local.get $3
                i64.sub
                i64.add
                local.set $3
              end ;; $if_9
              local.get $1
              i32.const 2
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_10
                local.get $3
                call $runtime.sleepTicks
                i32.const 2
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_10
              global.get $20
              i32.eqz
              if $if_11
                return
              end ;; $if_11
            end ;; $block_3
            local.get $1
            i32.const 3
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_12
              local.get $0
              call $_lparen_*internal/task.Task_rparen_.Resume
              i32.const 3
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_12
            global.get $20
            i32.eqz
            if $if_13
              i32.const 66865
              i32.load8_u
              i32.eqz
              local.tee $0
              br_if $loop
            end ;; $if_13
          end ;; $loop
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_14
          return
        end ;; $if_14
      end ;; $block_0
      local.get $1
      i32.const 4
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_15
        call $runtime.nilPanic
        i32.const 4
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_15
      global.get $20
      i32.eqz
      if $if_16
        unreachable
      end ;; $if_16
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $3
    i64.store offset=4 align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.run$1 (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $0
      end ;; $if
      local.get $0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        call $runtime.initAll
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      local.get $0
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_1
        call $main.main
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        i32.const 66865
        i32.const 1
        i32.store8
      end ;; $if_2
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.sleepTicks (type $8)
    (param $0 i64)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      i64.load align=4
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        local.get $0
        call $setTimeout
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i64.store align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.initAll (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $0
      end ;; $if
      global.get $20
      i32.eqz
      if $if_0
        i32.const 66580
        memory.size
        i32.const 16
        i32.shl
        i32.store
        call $__wasm_call_ctors
      end ;; $if_0
      local.get $0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        i32.const 66852
        i32.const 8
        call $runtime.gcRegisterGlobal
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $main.main (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $0
      i32.load
      local.set $2
      local.get $0
      i32.load offset=4
      local.set $4
      local.get $0
      i32.load offset=12
      local.set $5
      local.get $0
      i32.load offset=16
      local.set $6
      local.get $0
      i32.load offset=8
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 48
        i32.sub
        local.tee $2
        global.set $19
        local.get $2
        i32.const 44
        i32.add
        local.tee $6
        i32.const 0
        i32.store
        local.get $2
        i64.const 2
        i64.store offset=36 align=4
        i32.const 66844
        i32.load
        local.set $4
        i32.const 66844
        local.get $2
        i32.const 32
        i32.add
        local.tee $3
        i32.store
        local.get $2
        local.get $4
        i32.store offset=32
        local.get $2
        i32.const 40
        i32.add
        local.set $5
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        call $runtime.chanMake
        local.set $0
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $0
        local.set $3
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $5
        local.get $3
        i32.store
      end ;; $if_3
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        i32.const 66517
        i32.const 13
        call $runtime.printstring
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      local.get $1
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        call $runtime.printnl
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      local.get $1
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_6
        i32.const 9000
        i32.const 3
        call $runtime.alloc
        local.set $0
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $0
        local.set $5
      end ;; $if_6
      global.get $20
      i32.eqz
      if $if_7
        i32.const 66844
        local.get $4
        i32.store
        local.get $6
        local.get $5
        i32.store
      end ;; $if_7
      local.get $1
      i32.const 4
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_8
        i32.const 3
        call $internal/task.start
        i32.const 4
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_8
      local.get $1
      i32.const 5
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_9
        i32.const 4
        call $internal/task.start
        i32.const 5
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_9
      global.get $20
      i32.eqz
      if $if_10
        local.get $2
        i32.const 7
        i32.add
        local.set $6
        local.get $2
        i32.const 8
        i32.add
        local.set $4
      end ;; $if_10
      local.get $1
      i32.const 6
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_11
        local.get $3
        local.get $6
        local.get $4
        call $runtime.chanRecv
        i32.const 6
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_11
      local.get $1
      i32.const 7
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_12
        local.get $3
        call $runtime.chanClose
        i32.const 7
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_12
      local.get $1
      i32.const 8
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_13
        i32.const 66530
        i32.const 4
        call $runtime.printstring
        i32.const 8
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_13
      local.get $1
      i32.const 9
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_14
        call $runtime.printnl
        i32.const 9
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_14
      global.get $20
      i32.eqz
      if $if_15
        local.get $2
        i32.const 48
        i32.add
        global.set $19
      end ;; $if_15
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $0
    local.get $2
    i32.store
    local.get $0
    local.get $4
    i32.store offset=4
    local.get $0
    local.get $3
    i32.store offset=8
    local.get $0
    local.get $5
    i32.store offset=12
    local.get $0
    local.get $6
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    )
  
  (func $resume (type $1)
    (local $0 i32)
    (local $1 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $0
      end ;; $if
      global.get $20
      i32.const 1
      global.get $20
      if $if_0 (result i32)
        local.get $1
      else
        i32.const 66864
        i32.load8_u
        i32.eqz
      end ;; $if_0
      select
      if $if_1
        local.get $0
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          call $runtime.minSched
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          return
        end ;; $if_3
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_4
        i32.const 66864
        i32.const 1
        i32.store8
      end ;; $if_4
      local.get $0
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        call $runtime.scheduler
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $20
      i32.eqz
      if $if_6
        i32.const 66864
        i32.const 0
        i32.store8
      end ;; $if_6
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.minSched (type $1)
    (local $0 i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          i32.const 66865
          i32.load8_u
          local.tee $0
          br_if $block_0
        end ;; $if_1
        loop $loop
          global.get $20
          i32.eqz
          if $if_2
            call $_lparen_*internal/task.Queue_rparen_.Pop
            local.tee $0
            i32.eqz
            br_if $block_0
          end ;; $if_2
          local.get $1
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_3
            local.get $0
            call $_lparen_*internal/task.Task_rparen_.Resume
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          global.get $20
          i32.eqz
          if $if_4
            i32.const 66865
            i32.load8_u
            i32.eqz
            local.tee $0
            br_if $loop
          end ;; $if_4
        end ;; $loop
      end ;; $block_0
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.addSleepTask (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i64)
    (local $5 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i64.load offset=4 align=4
      local.set $4
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      local.get $1
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $1
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $1
          br_if $block_0
          local.get $0
          i64.const 1000000000
          i64.store offset=8
        end ;; $if_1
        local.get $3
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          call $runtime.ticks
          local.set $5
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $5
          local.set $4
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          i32.const 66840
          i32.load
          i32.eqz
          if $if_4
            i32.const 66872
            local.get $4
            i64.store
          end ;; $if_4
          block $block_1
            i32.const 66840
            i32.load
            i32.eqz
            if $if_5
              i32.const 66840
              local.set $1
              br $block_1
            end ;; $if_5
            i32.const 66840
            local.set $1
            loop $loop
              local.get $1
              i32.load
              local.tee $2
              i32.eqz
              br_if $block_0
              local.get $0
              i64.load offset=8
              local.get $2
              i64.load offset=8
              i64.lt_u
              br_if $block_1
              local.get $1
              i32.load
              local.tee $2
              i32.eqz
              br_if $block_0
              local.get $0
              local.get $0
              i64.load offset=8
              local.get $2
              i64.load offset=8
              i64.sub
              i64.store offset=8
              local.get $1
              i32.load
              local.tee $1
              i32.eqz
              br_if $block_0
              local.get $1
              i32.load
              br_if $loop
            end ;; $loop
          end ;; $block_1
          local.get $1
          i32.load
          if $if_6
            local.get $1
            i32.load
            local.tee $2
            i32.eqz
            br_if $block_0
            local.get $2
            local.get $2
            i64.load offset=8
            local.get $0
            i64.load offset=8
            i64.sub
            i64.store offset=8
          end ;; $if_6
          local.get $0
          local.get $1
          i32.load
          i32.store
          local.get $1
          local.get $0
          i32.store
          return
        end ;; $if_3
      end ;; $block_0
      local.get $3
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_7
        call $runtime.nilPanic
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_7
      global.get $20
      i32.eqz
      if $if_8
        unreachable
      end ;; $if_8
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $4
    i64.store offset=4 align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $time.Sleep (type $1)
    (local $0 i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        call $internal/task.Current
        local.set $0
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $0
        call $runtime.addSleepTask
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        call $internal/task.Pause
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*time.Time_rparen_.unixSec (type $12)
    (param $0 i32)
    (result i64)
    (local $1 i64)
    (local $2 i64)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $4
      i32.load
      local.set $0
      local.get $4
      i64.load offset=4 align=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $3
      end ;; $if_0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        local.get $0
        call $_lparen_*time.Time_rparen_.sec
        local.set $2
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $1
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_2
        local.get $1
        i64.const 62135596800
        i64.sub
        return
      end ;; $if_2
      unreachable
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i64.store offset=4 align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    i64.const 0
    )
  
  (func $_lparen_*time.Time_rparen_.sec (type $12)
    (param $0 i32)
    (result i64)
    (local $1 i32)
    (local $2 i64)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if
      global.get $20
      i32.const 1
      local.get $0
      select
      i32.eqz
      if $if_0
        local.get $0
        i64.load
        local.tee $2
        i64.const 0
        i64.lt_s
        if $if_1
          local.get $2
          i64.const 30
          i64.shr_u
          i64.const 8589934591
          i64.and
          i64.const 59453308800
          i64.add
          return
        end ;; $if_1
        local.get $0
        i64.load offset=8
        return
      end ;; $if_0
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        call $runtime.nilPanic
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        unreachable
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i64.const 0
    )
  
  (func $_lparen_*time.Time_rparen_.nsec (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_4
        local.get $0
        i32.load
        i32.const 1073741823
        i32.and
        return
      end ;; $if_4
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_time.Time_rparen_.UnixNano (type $16)
    (param $0 i64)
    (param $1 i64)
    (result i64)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i64.load align=4
      local.set $0
      local.get $2
      i32.load offset=8
      local.set $3
      local.get $2
      i32.load offset=12
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $2
        global.set $19
        local.get $2
        i32.const 24
        i32.add
        local.tee $3
        i64.const 0
        i64.store
        local.get $2
        i32.const 16
        i32.add
        local.get $1
        i64.store
        local.get $3
        i32.const 66880
        i32.store
        local.get $2
        local.get $0
        i64.store offset=8
        local.get $2
        i32.const 8
        i32.add
        local.set $3
      end ;; $if_1
      local.get $4
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $3
        call $_lparen_*time.Time_rparen_.unixSec
        local.set $1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_2
      local.get $3
      local.get $2
      i32.const 8
      i32.add
      global.get $20
      select
      local.set $3
      local.get $4
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_3
        local.get $3
        call $_lparen_*time.Time_rparen_.nsec
        local.set $4
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $4
        local.set $3
      end ;; $if_3
      global.get $20
      i32.eqz
      if $if_4
        local.get $2
        i32.const 32
        i32.add
        global.set $19
        local.get $3
        i64.extend_i32_u
        local.get $0
        i64.const 1000000000
        i64.mul
        i64.add
        return
      end ;; $if_4
      unreachable
    end ;; $block
    local.set $4
    global.get $21
    i32.load
    local.get $4
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $4
    local.get $0
    i64.store align=4
    local.get $4
    local.get $3
    i32.store offset=8
    local.get $4
    local.get $2
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    i64.const 0
    )
  
  (func $time.Now (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i64)
    (local $5 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $1
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 80
        i32.sub
        local.tee $1
        global.set $19
        local.get $1
        i32.const 8
        i32.add
        local.set $2
      end ;; $if_1
      local.get $3
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $2
        call $time.now
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $1
        i32.load offset=16
        local.set $3
        block $block_0
          local.get $1
          i64.load offset=8
          local.tee $4
          i64.const 2682288000
          i64.add
          local.tee $5
          i64.const 8589934592
          i64.ge_u
          if $if_4
            local.get $1
            i32.const 48
            i32.add
            local.tee $2
            i32.const 0
            i32.store
            local.get $1
            i32.const 40
            i32.add
            local.get $4
            i64.const 62135596800
            i64.add
            local.tee $4
            i64.store
            local.get $1
            local.get $3
            i64.extend_i32_s
            local.tee $5
            i64.store offset=32
            br $block_0
          end ;; $if_4
          local.get $1
          i64.load offset=24
          local.set $4
          local.get $1
          i32.const 72
          i32.add
          local.tee $2
          i32.const 0
          i32.store
          local.get $1
          i32.const -64
          i32.sub
          local.get $4
          i64.const 1
          i64.add
          local.tee $4
          i64.store
          local.get $1
          local.get $3
          i64.extend_i32_s
          local.get $5
          i64.const 30
          i64.shl
          i64.or
          i64.const -9223372036854775808
          i64.or
          local.tee $5
          i64.store offset=56
        end ;; $block_0
        local.get $2
        i32.const 66880
        i32.store
        local.get $0
        local.get $4
        i64.store offset=8
        local.get $0
        local.get $5
        i64.store
        local.get $1
        i32.const 80
        i32.add
        global.set $19
      end ;; $if_3
      return
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $malloc (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $3
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $3
        global.set $19
        local.get $3
        i32.const 8
        i32.add
        i32.const 66944
        i32.load
        local.tee $2
        i32.store
        local.get $3
        i32.const 1
        i32.store offset=4
        local.get $3
        i32.const 66844
        i32.load
        i32.store
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $2
        local.get $0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.Alloc
        local.set $1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $3
        i32.const 16
        i32.add
        global.set $19
        local.get $0
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $1
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $github.com/moontrade/nogc.AllocZeroed (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $3
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $3
        global.set $19
        local.get $3
        i32.const 8
        i32.add
        i32.const 66944
        i32.load
        local.tee $2
        i32.store
        local.get $3
        i32.const 1
        i32.store offset=4
        local.get $3
        i32.const 66844
        i32.load
        i32.store
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $2
        local.get $0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.AllocZeroed
        local.set $1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $3
        i32.const 16
        i32.add
        global.set $19
        local.get $0
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $1
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $calloc (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i32.const 8
        i32.add
        i32.const 66944
        i32.load
        local.tee $3
        i32.store
        local.get $4
        i32.const 1
        i32.store offset=4
        local.get $4
        i32.const 66844
        i32.load
        i32.store
        local.get $0
        local.get $1
        i32.mul
        local.set $0
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $3
        local.get $0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.AllocZeroed
        local.set $2
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $1
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $4
        i32.const 16
        i32.add
        global.set $19
        local.get $1
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $2
    local.get $3
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $realloc (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $4
        global.set $19
        local.get $4
        i32.const 8
        i32.add
        i32.const 66944
        i32.load
        local.tee $3
        i32.store
        local.get $4
        i32.const 1
        i32.store offset=4
        local.get $4
        i32.const 66844
        i32.load
        i32.store
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $3
        local.get $0
        local.get $1
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.Realloc
        local.set $2
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $0
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $4
        i32.const 16
        i32.add
        global.set $19
        local.get $0
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $2
    local.get $3
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $free (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66944
        i32.load
        local.set $1
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $1
        local.get $0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.Free
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $_lparen_github.com/moontrade/nogc.Pointer_rparen_.Unsafe (type $2)
    (param $0 i32)
    (result i32)
    local.get $0
    )
  
  (func $github.com/moontrade/nogc.growBy (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    memory.size
    local.set $2
    local.get $1
    memory.grow
    drop
    local.get $0
    i32.const 0
    memory.size
    local.tee $1
    i32.const 16
    i32.shl
    local.get $1
    local.get $2
    i32.eq
    local.tee $1
    select
    i32.store offset=4
    local.get $0
    i32.const 0
    local.get $2
    i32.const 16
    i32.shl
    local.get $1
    select
    i32.store
    )
  
  (func $runtime.initAllocator (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          i32.const 66944
          i32.load
          br_if $block_0
          local.get $0
          i32.eqz
          i32.eqz
          local.get $0
          i32.const 1691
          i32.add
          memory.size
          local.tee $1
          i32.const 16
          i32.shl
          i32.le_u
          i32.and
          if $if_2 (result i32)
            local.get $1
          else
            i32.const 1
            memory.grow
            drop
            memory.size
          end ;; $if_2
          i32.const 16
          i32.shl
          local.set $1
        end ;; $if_1
        local.get $2
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          local.get $0
          local.get $1
          call $github.com/moontrade/nogc/alloc/tlsf.Bootstrap
          local.set $2
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $2
          local.set $0
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          i32.const 66944
          local.get $0
          i32.store
        end ;; $if_4
      end ;; $block_0
      return
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $21
    global.get $21
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Add (type $10)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (param $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (local $16 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 32
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $7
      i32.load
      local.set $0
      local.get $7
      i32.load offset=8
      local.set $2
      local.get $7
      i32.load offset=12
      local.set $3
      local.get $7
      i32.load offset=16
      local.set $4
      local.get $7
      i32.load offset=20
      local.set $5
      local.get $7
      i32.load offset=24
      local.set $6
      local.get $7
      i32.load offset=28
      local.set $9
      local.get $7
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const -64
        i32.add
        local.tee $4
        global.set $19
        local.get $4
        i64.const 0
        i64.store offset=52 align=4
        local.get $4
        i64.const 0
        i64.store offset=44 align=4
        local.get $4
        i64.const 0
        i64.store offset=36 align=4
        local.get $4
        i64.const 0
        i64.store offset=28 align=4
        local.get $4
        i64.const 9
        i64.store offset=20 align=4
        i32.const 66844
        i32.load
        local.set $9
        i32.const 66844
        local.get $4
        i32.const 16
        i32.add
        local.tee $6
        i32.store
        local.get $4
        local.get $9
        i32.store offset=16
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $1
      select
      if $if_2
        local.get $8
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_5
        local.get $1
        i32.load offset=8
        local.tee $5
        i32.eqz
        local.set $6
      end ;; $if_5
      block $block_0
        block $block_1
          block $block_2
            block $block_3
              block $block_4
                i32.const 1
                global.get $20
                local.get $6
                select
                i32.eqz
                if $if_6
                  local.get $1
                  i32.load
                  local.set $7
                  i32.const 0
                  local.set $6
                  local.get $4
                  i32.const 0
                  i32.store offset=12
                  local.get $4
                  i32.const 56
                  i32.add
                  local.get $4
                  i32.const 8
                  i32.add
                  i32.store
                  local.get $4
                  local.get $2
                  i32.store offset=8
                  local.get $4
                  i32.const 48
                  i32.add
                  local.set $10
                  local.get $4
                  i32.const 52
                  i32.add
                  local.set $11
                  local.get $4
                  i32.const 44
                  i32.add
                  local.set $12
                  local.get $4
                  i32.const 40
                  i32.add
                  local.set $13
                  local.get $4
                  i32.const 28
                  i32.add
                  local.set $14
                  local.get $4
                  i32.const 24
                  i32.add
                  local.set $15
                  local.get $2
                  i32.const 0
                  call $github.com/moontrade/nogc/hash.FNV32a
                  local.get $5
                  i32.rem_u
                  i32.const 3
                  i32.shl
                  local.get $7
                  i32.add
                  local.tee $16
                  local.set $5
                  loop $loop
                    local.get $10
                    local.get $5
                    i32.store
                    local.get $11
                    local.get $5
                    i32.store
                    local.get $12
                    local.get $5
                    i32.store
                    local.get $13
                    local.get $5
                    i32.store
                    local.get $14
                    local.get $5
                    i32.store
                    local.get $15
                    local.get $5
                    i32.store
                    local.get $5
                    i32.eqz
                    br_if $block_4
                    local.get $5
                    i32.load
                    local.tee $7
                    i32.eqz
                    br_if $block_1
                    local.get $2
                    local.get $7
                    i32.eq
                    br_if $block_2
                    block $block_5
                      local.get $6
                      local.get $5
                      i32.load offset=4
                      i32.gt_s
                      if $if_7
                        local.get $5
                        i32.load offset=4
                        local.set $7
                        local.get $5
                        local.get $6
                        i32.store offset=4
                        local.get $5
                        i32.load
                        local.set $6
                        local.get $5
                        local.get $2
                        i32.store
                        local.get $6
                        local.set $2
                        br $block_5
                      end ;; $if_7
                      local.get $6
                      local.set $7
                    end ;; $block_5
                    local.get $7
                    i32.const 1
                    i32.add
                    local.set $6
                    local.get $5
                    i32.const 8
                    i32.add
                    local.tee $5
                    local.get $1
                    i32.load offset=4
                    i32.ge_u
                    if $if_8
                      local.get $1
                      i32.load
                      local.set $5
                    end ;; $if_8
                    local.get $1
                    i32.load offset=16
                    local.get $6
                    i32.lt_s
                    br_if $block_3
                    local.get $5
                    local.get $16
                    i32.ne
                    br_if $loop
                  end ;; $loop
                  br $block_3
                end ;; $if_6
                local.get $8
                i32.const 1
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_9
                  call $runtime.divideByZeroPanic
                  i32.const 1
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_9
                global.get $20
                i32.eqz
                if $if_10
                  unreachable
                end ;; $if_10
              end ;; $block_4
              global.get $20
              i32.eqz
              if $if_11
                local.get $4
                local.get $6
                i32.store offset=12
                local.get $4
                local.get $2
                i32.store offset=8
              end ;; $if_11
              local.get $8
              i32.const 2
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_12
                call $runtime.nilPanic
                i32.const 2
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_12
              global.get $20
              i32.eqz
              if $if_13
                unreachable
              end ;; $if_13
            end ;; $block_3
            global.get $20
            i32.eqz
            if $if_14
              local.get $4
              local.get $6
              i32.store offset=12
              local.get $4
              local.get $2
              i32.store offset=8
              i32.const 0
              local.set $5
              i32.const 0
              local.set $6
              local.get $3
              i32.const 6
              i32.ge_s
              local.tee $2
              br_if $block_0
              i32.const 0
              local.set $5
              i32.const 0
              local.set $6
            end ;; $if_14
            local.get $8
            i32.const 3
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_15
              local.get $1
              call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Grow
              local.set $7
              i32.const 3
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $7
              local.set $2
            end ;; $if_15
            global.get $20
            i32.eqz
            if $if_16
              local.get $2
              i32.const 1
              i32.and
              i32.eqz
              br_if $block_0
              local.get $4
              i32.load offset=8
              local.set $6
              local.get $3
              i32.const 1
              i32.add
              local.set $2
            end ;; $if_16
            local.get $8
            i32.const 4
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_17
              local.get $4
              local.get $1
              local.get $6
              local.get $2
              call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Add
              i32.const 4
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_17
            global.get $20
            i32.eqz
            if $if_18
              local.get $4
              i32.load8_u offset=1
              local.set $6
              local.get $4
              i32.load8_u
              local.set $5
              br $block_0
            end ;; $if_18
          end ;; $block_2
          global.get $20
          i32.eqz
          if $if_19
            local.get $4
            local.get $6
            i32.store offset=12
            local.get $5
            local.get $6
            i32.store offset=4
            local.get $4
            local.get $2
            i32.store offset=8
            i32.const 1
            local.set $6
            i32.const 0
            local.set $5
            br $block_0
          end ;; $if_19
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_20
          local.get $4
          i32.const 36
          i32.add
          local.get $5
          i32.store
          local.get $4
          i32.const 32
          i32.add
          local.get $5
          i32.store
          local.get $4
          local.get $6
          i32.store offset=12
          local.get $5
          local.get $6
          i32.store offset=4
          local.get $4
          local.get $2
          i32.store offset=8
          local.get $5
          local.get $2
          i32.store
          i32.const 1
          local.set $5
          local.get $1
          local.get $1
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          i32.const 1
          local.set $6
        end ;; $if_20
      end ;; $block_0
      global.get $20
      i32.eqz
      if $if_21
        i32.const 66844
        local.get $9
        i32.store
        local.get $0
        local.get $5
        i32.const 1
        i32.and
        i32.store8
        local.get $0
        local.get $6
        i32.const 1
        i32.and
        i32.store8 offset=1
        local.get $4
        i32.const -64
        i32.sub
        global.set $19
      end ;; $if_21
      return
    end ;; $block
    local.set $7
    global.get $21
    i32.load
    local.get $7
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $7
    local.get $0
    i32.store
    local.get $7
    local.get $1
    i32.store offset=4
    local.get $7
    local.get $2
    i32.store offset=8
    local.get $7
    local.get $3
    i32.store offset=12
    local.get $7
    local.get $4
    i32.store offset=16
    local.get $7
    local.get $5
    i32.store offset=20
    local.get $7
    local.get $6
    i32.store offset=24
    local.get $7
    local.get $9
    i32.store offset=28
    global.get $21
    global.get $21
    i32.load
    i32.const 32
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Grow (type $2)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 f32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 32
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $4
      i32.load
      local.set $0
      local.get $4
      i32.load offset=4
      local.set $1
      local.get $4
      i32.load offset=12
      local.set $3
      local.get $4
      i32.load offset=16
      local.set $5
      local.get $4
      i32.load offset=20
      local.set $6
      local.get $4
      i32.load offset=24
      local.set $7
      local.get $4
      i32.load offset=28
      local.set $9
      local.get $4
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 80
        i32.sub
        local.tee $1
        global.set $19
        local.get $1
        i64.const 0
        i64.store offset=68 align=4
        local.get $1
        i64.const 0
        i64.store offset=60 align=4
        local.get $1
        i64.const 5
        i64.store offset=52 align=4
        i32.const 66844
        i32.load
        local.set $9
        i32.const 66844
        local.get $1
        i32.const 48
        i32.add
        local.tee $2
        i32.store
        local.get $1
        local.get $9
        i32.store offset=48
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_2
        local.get $8
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_5
        local.get $0
        f32.load offset=24
        f32.const 0x1.000000p-0
        f32.le
        if $if_6
          local.get $0
          i32.const 1073741824
          i32.store offset=24
        end ;; $if_6
        i32.const -1
        i32.const 0
        local.get $0
        f32.load offset=24
        local.get $0
        i32.load offset=8
        f32.convert_i32_u
        f32.mul
        local.tee $10
        f32.const 0x0.000000p-127
        f32.ge
        local.tee $2
        select
        local.set $3
        local.get $10
        f32.const 0x1.fffffcp+31
        f32.le
        local.set $5
        block $block_0 (result i32)
          local.get $2
          local.get $10
          f32.const 0x1.000000p+32
          f32.lt
          i32.and
          if $if_7
            local.get $10
            i32.trunc_f32_u
            br $block_0
          end ;; $if_7
          i32.const 0
        end ;; $block_0
        local.tee $6
        local.get $3
        local.get $5
        select
        local.get $3
        local.get $2
        select
        local.tee $3
        i32.const 3
        i32.shl
        local.set $5
      end ;; $if_5
      local.get $8
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_8
        local.get $5
        call $github.com/moontrade/nogc.AllocZeroed
        local.set $4
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $4
        local.set $2
      end ;; $if_8
      global.get $20
      i32.eqz
      if $if_9
        local.get $1
        i32.const 24
        i32.add
        local.tee $6
        i64.const 0
        i64.store
        local.get $1
        i32.const 32
        i32.add
        local.tee $7
        i64.const 0
        i64.store
        local.get $6
        local.get $3
        i32.store
        local.get $7
        local.get $0
        i32.load offset=16
        i32.store
        local.get $1
        i32.const 40
        i32.add
        local.get $0
        f32.load offset=24
        f32.store
        local.get $1
        i64.const 0
        i64.store offset=16
        local.get $1
        i32.const -64
        i32.sub
        local.get $1
        i32.const 16
        i32.add
        local.tee $6
        i32.store
        local.get $1
        local.get $2
        local.get $5
        i32.add
        i32.store offset=20
        local.get $1
        local.get $2
        i32.store offset=16
        local.get $1
        i32.const 0
        i32.store offset=28
        local.get $0
        i32.load offset=4
        local.tee $3
        local.get $0
        i32.load
        local.tee $2
        i32.gt_u
        local.set $5
        local.get $2
        local.get $3
        i32.ge_u
        local.set $3
      end ;; $if_9
      block $block_1
        block $block_2
          global.get $20
          i32.eqz
          if $if_10
            local.get $3
            br_if $block_2
            local.get $1
            i32.const 68
            i32.add
            local.get $2
            i32.store
            local.get $1
            i32.const 72
            i32.add
            local.get $2
            i32.store
            local.get $1
            i32.const 16
            i32.add
            local.set $6
            local.get $2
            i32.load
            local.set $7
            local.get $1
            i32.const 8
            i32.add
            local.set $3
          end ;; $if_10
          local.get $8
          i32.const 2
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_11
            local.get $3
            local.get $6
            local.get $7
            i32.const 0
            call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Add
            i32.const 2
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_11
          global.get $20
          i32.eqz
          if $if_12
            local.get $1
            i32.load8_u offset=9
            i32.eqz
            local.tee $3
            br_if $block_1
            local.get $1
            i32.const 60
            i32.add
            local.set $6
            local.get $2
            i32.const 8
            i32.add
            local.set $2
          end ;; $if_12
          loop $loop
            global.get $20
            i32.eqz
            if $if_13
              local.get $2
              local.get $0
              i32.load offset=4
              local.tee $3
              i32.lt_u
              local.set $5
              local.get $2
              local.get $3
              i32.ge_u
              br_if $block_2
              local.get $1
              i32.const 56
              i32.add
              local.get $2
              i32.store
              local.get $6
              local.get $2
              i32.store
              local.get $2
              i32.load
              local.set $7
              local.get $1
              i32.const 16
              i32.add
              local.set $3
            end ;; $if_13
            local.get $8
            i32.const 3
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_14
              local.get $1
              local.get $3
              local.get $7
              i32.const 0
              call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Add
              i32.const 3
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_14
            global.get $20
            i32.eqz
            if $if_15
              local.get $2
              i32.const 8
              i32.add
              local.set $2
              local.get $1
              i32.load8_u offset=1
              local.tee $3
              br_if $loop
            end ;; $if_15
          end ;; $loop
          global.get $20
          i32.eqz
          br_if $block_1
        end ;; $block_2
        global.get $20
        i32.eqz
        if $if_16
          local.get $0
          i32.load
          local.set $2
        end ;; $if_16
        local.get $8
        i32.const 4
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_17
          local.get $2
          call $free
          i32.const 4
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_17
        global.get $20
        i32.eqz
        if $if_18
          local.get $0
          local.get $1
          f32.load offset=40
          f32.store offset=24
          local.get $0
          local.get $1
          i32.load offset=36
          i32.store offset=20
          local.get $0
          local.get $1
          i64.load offset=28 align=4
          i64.store offset=12 align=4
          local.get $0
          local.get $1
          i64.load offset=20 align=4
          i64.store offset=4 align=4
          local.get $0
          local.get $1
          i32.load offset=16
          i32.store
        end ;; $if_18
      end ;; $block_1
      global.get $20
      i32.eqz
      if $if_19
        i32.const 66844
        local.get $9
        i32.store
        local.get $1
        i32.const 80
        i32.add
        global.set $19
        local.get $5
        i32.const 1
        i32.xor
        return
      end ;; $if_19
      unreachable
    end ;; $block
    local.set $4
    global.get $21
    i32.load
    local.get $4
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $4
    local.get $0
    i32.store
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $4
    local.get $2
    i32.store offset=8
    local.get $4
    local.get $3
    i32.store offset=12
    local.get $4
    local.get $5
    i32.store offset=16
    local.get $4
    local.get $6
    i32.store offset=20
    local.get $4
    local.get $7
    i32.store offset=24
    local.get $4
    local.get $9
    i32.store offset=28
    global.get $21
    global.get $21
    i32.load
    i32.const 32
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Delete (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $4
      i32.load
      local.set $0
      local.get $4
      i32.load offset=8
      local.set $5
      local.get $4
      i32.load offset=4
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 16
        i32.sub
        local.tee $5
        global.set $19
        local.get $0
        i32.eqz
        local.set $2
      end ;; $if_1
      block $block_0
        block $block_1
          block $block_2
            i32.const 1
            global.get $20
            global.get $20
            if $if_2 (result i32)
              local.get $3
            else
              local.get $2
              br_if $block_0
              local.get $0
              i32.load offset=8
              local.tee $2
              i32.eqz
            end ;; $if_2
            select
            i32.eqz
            if $if_3
              local.get $1
              i32.const 0
              call $github.com/moontrade/nogc/hash.FNV32a
              local.get $2
              i32.rem_u
              i32.const 3
              i32.shl
              local.set $2
              local.get $2
              local.get $0
              i32.load
              i32.add
              local.tee $4
              local.set $2
              loop $loop
                local.get $2
                i32.eqz
                br_if $block_0
                local.get $2
                i32.load
                local.tee $3
                i32.eqz
                br_if $block_1
                local.get $1
                local.get $3
                i32.eq
                br_if $block_2
                local.get $2
                i32.const 8
                i32.add
                local.tee $2
                local.get $0
                i32.load offset=4
                i32.ge_u
                if $if_4
                  local.get $0
                  i32.load
                  local.set $2
                end ;; $if_4
                local.get $2
                local.get $4
                i32.ne
                br_if $loop
              end ;; $loop
              br $block_1
            end ;; $if_3
            local.get $6
            i32.const 0
            global.get $20
            select
            i32.eqz
            if $if_5
              call $runtime.divideByZeroPanic
              i32.const 0
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_5
            global.get $20
            i32.eqz
            if $if_6
              unreachable
            end ;; $if_6
          end ;; $block_2
          global.get $20
          i32.eqz
          if $if_7
            loop $loop_0
              block $block_3
                local.get $2
                i32.const 8
                i32.add
                local.tee $3
                local.get $0
                i32.load offset=4
                i32.ge_u
                if $if_8
                  local.get $0
                  i32.load
                  local.set $3
                end ;; $if_8
                local.get $2
                local.get $3
                i32.eq
                br_if $block_3
                local.get $3
                i32.eqz
                br_if $block_0
                local.get $3
                i32.load
                i32.eqz
                br_if $block_3
                local.get $3
                i32.load offset=4
                local.tee $1
                i32.const 0
                i32.le_s
                br_if $block_3
                local.get $3
                local.get $1
                i32.const 1
                i32.sub
                i32.store offset=4
                local.get $2
                local.get $3
                i64.load align=4
                i64.store align=4
                local.get $3
                local.set $2
                br $loop_0
              end ;; $block_3
            end ;; $loop_0
            local.get $2
            i64.const 0
            i64.store align=4
            local.get $0
            local.get $0
            i32.load offset=12
            i32.const 1
            i32.sub
            i32.store offset=12
            local.get $5
            i64.const 0
            i64.store offset=8
          end ;; $if_7
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_9
          local.get $5
          i32.const 16
          i32.add
          global.set $19
          return
        end ;; $if_9
      end ;; $block_0
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_10
        call $runtime.nilPanic
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_10
      global.get $20
      i32.eqz
      if $if_11
        unreachable
      end ;; $if_11
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $5
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Has (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $4
      local.get $3
      i32.load offset=12
      local.set $5
      local.get $3
      i32.load offset=16
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $2
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $20
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $20
      i32.eqz
      if $if_4
        local.get $0
        i32.load offset=8
        local.tee $4
        i32.eqz
        local.set $5
      end ;; $if_4
      block $block_0
        i32.const 1
        global.get $20
        local.get $5
        select
        i32.eqz
        if $if_5
          i32.const 0
          local.set $3
          local.get $1
          i32.const 0
          call $github.com/moontrade/nogc/hash.FNV32a
          local.get $4
          i32.rem_u
          i32.const 3
          i32.shl
          local.get $0
          i32.load
          i32.add
          local.tee $5
          local.set $4
          br $block_0
        end ;; $if_5
        local.get $2
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_6
          call $runtime.divideByZeroPanic
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_6
        global.get $20
        i32.eqz
        if $if_7
          unreachable
        end ;; $if_7
      end ;; $block_0
      global.get $20
      i32.eqz
      if $if_8
        loop $loop
          block $block_1
            local.get $4
            i32.load
            local.tee $2
            i32.eqz
            br_if $block_1
            local.get $1
            local.get $2
            i32.eq
            if $if_9
              i32.const 1
              local.set $3
              br $block_1
            end ;; $if_9
            local.get $4
            i32.const 8
            i32.add
            local.tee $4
            local.get $0
            i32.load offset=4
            i32.ge_u
            if $if_10
              local.get $0
              i32.load
              local.set $4
            end ;; $if_10
            local.get $4
            local.get $5
            i32.ne
            br_if $loop
          end ;; $block_1
        end ;; $loop
        local.get $3
        return
      end ;; $if_8
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $2
    local.get $5
    i32.store offset=12
    local.get $2
    local.get $3
    i32.store offset=16
    global.get $21
    global.get $21
    i32.load
    i32.const 20
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $github.com/moontrade/nogc.NewPointerSet (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $2
      local.get $1
      i32.load offset=12
      local.set $4
      local.get $1
      i32.load offset=16
      local.set $5
      local.get $1
      i32.load offset=20
      local.set $6
      local.get $1
      i32.load offset=8
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $7
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 48
        i32.sub
        local.tee $2
        global.set $19
        local.get $2
        i32.const 44
        i32.add
        local.tee $6
        i32.const 0
        i32.store
        local.get $2
        i64.const 2
        i64.store offset=36 align=4
        i32.const 66844
        i32.load
        local.set $4
        i32.const 66844
        local.get $2
        i32.const 32
        i32.add
        i32.store
        local.get $2
        local.get $4
        i32.store offset=32
        local.get $2
        i32.const 32
        i32.add
        local.tee $3
        i32.const 8
        i32.add
        local.set $5
      end ;; $if_1
      local.get $7
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        i32.const 512
        call $github.com/moontrade/nogc.AllocZeroed
        local.set $1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $3
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $5
        local.get $3
        i32.store
        local.get $3
        i32.const 512
        call $runtime.gcZero
        local.get $2
        i32.const 8
        i32.add
        local.tee $5
        i64.const 0
        i64.store
        i32.const 66844
        local.get $4
        i32.store
        local.get $2
        i32.const 16
        i32.add
        i64.const 274877906954
        i64.store
        local.get $2
        i32.const 24
        i32.add
        i32.const 1073741824
        i32.store
        local.get $5
        i32.const 64
        i32.store
        local.get $2
        i64.const 0
        i64.store
        local.get $6
        local.get $2
        i32.store
        local.get $2
        local.get $3
        i32.const 512
        i32.add
        local.tee $4
        i32.store offset=4
        local.get $2
        local.get $3
        i32.store
        local.get $0
        i64.const 274877906954
        i64.store offset=16
        local.get $0
        i64.const 64
        i64.store offset=8
        local.get $0
        local.get $4
        i32.store offset=4
        local.get $0
        local.get $3
        i32.store
        local.get $2
        i32.const 48
        i32.add
        global.set $19
      end ;; $if_3
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $3
    i32.store offset=8
    local.get $1
    local.get $4
    i32.store offset=12
    local.get $1
    local.get $5
    i32.store offset=16
    local.get $1
    local.get $6
    i32.store offset=20
    global.get $21
    global.get $21
    i32.load
    i32.const 24
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.Collect (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i64)
    (local $12 i64)
    (local $13 i64)
    (local $14 i64)
    (local $15 i64)
    (local $16 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 76
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $5
      i32.load
      local.set $0
      local.get $5
      i32.load offset=4
      local.set $2
      local.get $5
      i32.load offset=16
      local.set $3
      local.get $5
      i32.load offset=20
      local.set $4
      local.get $5
      i32.load offset=24
      local.set $6
      local.get $5
      i64.load offset=28 align=4
      local.set $12
      local.get $5
      i64.load offset=36 align=4
      local.set $13
      local.get $5
      i32.load offset=44
      local.set $7
      local.get $5
      i32.load offset=48
      local.set $8
      local.get $5
      i64.load offset=52 align=4
      local.set $15
      local.get $5
      i32.load offset=60
      local.set $9
      local.get $5
      i32.load offset=64
      local.set $10
      local.get $5
      i64.load offset=68 align=4
      local.set $16
      local.get $5
      i64.load offset=8 align=4
      local.set $11
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const -64
        i32.add
        local.tee $4
        global.set $19
        local.get $4
        i32.const 48
        i32.add
        local.set $2
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $2
        call $time.Now
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $4
        i64.load offset=56
        local.set $13
        local.get $4
        i64.load offset=48
        local.set $11
      end ;; $if_3
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        local.get $11
        local.get $13
        call $_lparen_time.Time_rparen_.UnixNano
        local.set $14
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $14
        local.set $16
      end ;; $if_4
      local.get $2
      local.get $0
      i32.eqz
      global.get $20
      select
      local.set $2
      block $block_0
        global.get $20
        i32.eqz
        if $if_5
          local.get $2
          br_if $block_0
          local.get $0
          i32.const 88
          i32.add
          local.tee $2
          i64.load
          i64.const 1
          i64.add
          local.set $11
          local.get $2
          local.get $11
          i64.store
        end ;; $if_5
        local.get $1
        i32.const 2
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_6
          call $runtime.markStack
          i32.const 2
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_6
        local.get $1
        i32.const 3
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_7
          call $github.com/moontrade/nogc.doMarkGlobals
          i32.const 3
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        local.get $2
        local.get $4
        i32.const 32
        i32.add
        global.get $20
        select
        local.set $2
        local.get $1
        i32.const 4
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_8
          local.get $2
          call $time.Now
          i32.const 4
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_8
        global.get $20
        i32.eqz
        if $if_9
          local.get $4
          i64.load offset=40
          local.set $13
          local.get $4
          i64.load offset=32
          local.set $11
        end ;; $if_9
        local.get $1
        i32.const 5
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_10
          local.get $11
          local.get $13
          call $_lparen_time.Time_rparen_.UnixNano
          local.set $14
          i32.const 5
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $14
          local.set $13
        end ;; $if_10
        global.get $20
        i32.eqz
        if $if_11
          local.get $0
          i32.const 360
          i32.add
          i64.const 0
          i64.store
          local.get $0
          i32.const 352
          i32.add
          i64.const 0
          i64.store
          local.get $0
          i32.load
          local.tee $2
          local.get $0
          i32.load offset=8
          i32.const 3
          i32.shl
          i32.add
          local.set $6
          local.get $2
          local.get $6
          i32.ge_u
          local.set $3
        end ;; $if_11
        global.get $20
        i32.const 1
        local.get $3
        select
        if $if_12
          loop $loop
            global.get $20
            i32.eqz
            if $if_13
              local.get $2
              i32.load
              local.tee $7
              i32.eqz
              local.set $3
            end ;; $if_13
            block $block_1
              global.get $20
              i32.eqz
              if $if_14
                local.get $3
                br_if $block_1
                local.get $7
                i32.const 8
                i32.sub
                call $_lparen_github.com/moontrade/nogc.Pointer_rparen_.Unsafe
                local.tee $3
                i32.eqz
                br_if $block_0
                local.get $3
                i32.load
                local.set $8
                local.get $3
                i32.load offset=4
                local.set $3
              end ;; $if_14
              local.get $1
              i32.const 6
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_15
                i32.const 66192
                i32.const 4
                call $runtime.printstring
                i32.const 6
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_15
              local.get $1
              i32.const 7
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_16
                call $runtime.printspace
                i32.const 7
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_16
              local.get $1
              i32.const 8
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_17
                local.get $7
                call $runtime.printuint32
                i32.const 8
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_17
              local.get $1
              i32.const 9
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_18
                call $runtime.printspace
                i32.const 9
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_18
              local.get $1
              i32.const 10
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_19
                i32.const 66196
                i32.const 4
                call $runtime.printstring
                i32.const 10
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_19
              local.get $1
              i32.const 11
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_20
                call $runtime.printspace
                i32.const 11
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_20
              local.get $1
              i32.const 12
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_21
                local.get $3
                call $runtime.printuint32
                i32.const 12
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_21
              local.get $1
              i32.const 13
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_22
                call $runtime.printspace
                i32.const 13
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_22
              local.get $1
              i32.const 14
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_23
                i32.const 66200
                i32.const 5
                call $runtime.printstring
                i32.const 14
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_23
              local.get $1
              i32.const 15
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_24
                call $runtime.printspace
                i32.const 15
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_24
              local.get $1
              i32.const 16
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_25
                local.get $8
                call $runtime.printuint32
                i32.const 16
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_25
              local.get $1
              i32.const 17
              i32.eq
              i32.const 1
              global.get $20
              select
              if $if_26
                call $runtime.printnl
                i32.const 17
                global.get $20
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_26
            end ;; $block_1
            global.get $20
            i32.eqz
            if $if_27
              local.get $6
              local.get $2
              i32.const 8
              i32.add
              local.tee $2
              i32.gt_u
              local.tee $3
              br_if $loop
            end ;; $if_27
          end ;; $loop
        end ;; $if_12
        local.get $2
        local.get $4
        i32.const 16
        i32.add
        global.get $20
        select
        local.set $2
        local.get $1
        i32.const 18
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_28
          local.get $2
          call $time.Now
          i32.const 18
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_28
        global.get $20
        i32.eqz
        if $if_29
          local.get $4
          i64.load offset=24
          local.set $12
          local.get $4
          i64.load offset=16
          local.set $11
        end ;; $if_29
        local.get $1
        i32.const 19
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_30
          local.get $11
          local.get $12
          call $_lparen_time.Time_rparen_.UnixNano
          local.set $14
          i32.const 19
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $14
          local.set $12
        end ;; $if_30
        global.get $20
        i32.eqz
        if $if_31
          local.get $0
          i32.load
          local.tee $7
          local.get $0
          i32.load offset=8
          i32.const 3
          i32.shl
          i32.add
          local.set $10
          local.get $7
          local.get $10
          i32.lt_u
          local.set $2
        end ;; $if_31
        block $block_2
          global.get $20
          i32.eqz
          if $if_32
            local.get $2
            i32.eqz
            if $if_33
              i32.const 0
              local.set $8
              i32.const -1
              local.set $6
              br $block_2
            end ;; $if_33
            i32.const 0
            local.set $8
            i32.const -1
            local.set $6
          end ;; $if_32
          loop $loop_0
            global.get $20
            i32.eqz
            if $if_34
              local.get $7
              i32.load
              local.tee $2
              i32.eqz
              local.set $3
            end ;; $if_34
            block $block_3
              global.get $20
              i32.eqz
              if $if_35
                local.get $3
                br_if $block_3
                local.get $2
                i32.const 8
                i32.sub
                local.tee $3
                i32.eqz
                br_if $block_0
                local.get $3
                i32.load
                local.set $9
              end ;; $if_35
              block $block_4
                global.get $20
                i32.eqz
                if $if_36
                  local.get $9
                  br_if $block_4
                  local.get $0
                  local.get $0
                  i32.load offset=368
                  local.get $3
                  i32.load offset=4
                  i32.sub
                  local.tee $9
                  i32.store offset=368
                  local.get $3
                  i64.load32_u offset=4
                  local.set $11
                  local.get $0
                  local.get $0
                  i64.load offset=96
                  i64.const 1
                  i64.sub
                  i64.store offset=96
                  local.get $0
                  local.get $0
                  i64.load offset=352
                  i64.const 1
                  i64.add
                  i64.store offset=352
                  local.get $0
                  local.get $0
                  i64.load offset=360
                  local.tee $15
                  local.get $11
                  i64.add
                  local.tee $11
                  i64.store offset=360
                  local.get $3
                  i32.load offset=4
                  local.set $3
                end ;; $if_36
                local.get $1
                i32.const 20
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_37
                  i32.const 66205
                  i32.const 8
                  call $runtime.printstring
                  i32.const 20
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_37
                local.get $1
                i32.const 21
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_38
                  call $runtime.printspace
                  i32.const 21
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_38
                local.get $1
                i32.const 22
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_39
                  local.get $2
                  call $runtime.printuint32
                  i32.const 22
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_39
                local.get $1
                i32.const 23
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_40
                  call $runtime.printspace
                  i32.const 23
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_40
                local.get $1
                i32.const 24
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_41
                  i32.const 66213
                  i32.const 4
                  call $runtime.printstring
                  i32.const 24
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_41
                local.get $1
                i32.const 25
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_42
                  call $runtime.printspace
                  i32.const 25
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_42
                local.get $1
                i32.const 26
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_43
                  local.get $3
                  call $runtime.printuint32
                  i32.const 26
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_43
                local.get $1
                i32.const 27
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_44
                  call $runtime.printnl
                  i32.const 27
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_44
                local.get $1
                i32.const 28
                i32.eq
                i32.const 1
                global.get $20
                select
                if $if_45
                  local.get $0
                  local.get $2
                  call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Delete
                  i32.const 28
                  global.get $20
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_45
                global.get $20
                i32.eqz
                br_if $block_3
              end ;; $block_4
              global.get $20
              i32.eqz
              if $if_46
                local.get $3
                i32.const 0
                i32.store
                local.get $2
                local.get $8
                local.get $2
                local.get $8
                i32.gt_u
                local.tee $3
                select
                local.set $8
                local.get $2
                local.get $6
                local.get $2
                local.get $6
                i32.lt_u
                select
                local.set $6
              end ;; $if_46
            end ;; $block_3
            global.get $20
            i32.eqz
            if $if_47
              local.get $10
              local.get $7
              i32.const 8
              i32.add
              local.tee $7
              i32.gt_u
              local.tee $2
              br_if $loop_0
            end ;; $if_47
          end ;; $loop_0
        end ;; $block_2
        global.get $20
        i32.eqz
        if $if_48
          local.get $0
          local.get $8
          i32.store offset=32
          local.get $0
          local.get $6
          i32.store offset=28
        end ;; $if_48
        local.get $1
        i32.const 29
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_49
          local.get $4
          call $time.Now
          i32.const 29
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_49
        global.get $20
        i32.eqz
        if $if_50
          local.get $4
          i64.load offset=8
          local.set $15
          local.get $4
          i64.load
          local.set $11
        end ;; $if_50
        local.get $1
        i32.const 30
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_51
          local.get $11
          local.get $15
          call $_lparen_time.Time_rparen_.UnixNano
          local.set $14
          i32.const 30
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $14
          local.set $11
        end ;; $if_51
        global.get $20
        i32.eqz
        if $if_52
          local.get $0
          i32.const 328
          i32.add
          local.get $12
          local.get $13
          i64.sub
          local.tee $15
          i64.store
          local.get $0
          i32.const 320
          i32.add
          local.get $13
          local.get $16
          i64.sub
          local.tee $13
          i64.store
          local.get $0
          i32.const 336
          i32.add
          local.get $11
          local.get $12
          i64.sub
          local.tee $11
          i64.store
          local.get $0
          i32.const 152
          i32.add
          local.tee $2
          i64.load
          local.get $11
          i64.add
          local.set $12
          local.get $2
          local.get $12
          i64.store
          local.get $0
          i32.const 144
          i32.add
          local.tee $2
          i64.load
          local.get $0
          i64.load offset=360
          i64.add
          local.set $12
          local.get $2
          local.get $12
          i64.store
          local.get $0
          i32.const 136
          i32.add
          local.tee $2
          i64.load
          local.get $0
          i64.load offset=352
          i64.add
          local.set $12
          local.get $2
          local.get $12
          i64.store
          local.get $0
          i32.const 344
          i32.add
          local.get $13
          local.get $15
          i64.add
          local.get $11
          i64.add
          local.tee $11
          i64.store
          local.get $0
          i32.const 288
          i32.add
          local.tee $2
          i64.load
          local.get $11
          i64.add
          local.set $11
          local.get $2
          local.get $11
          i64.store
          local.get $4
          i32.const -64
          i32.sub
          global.set $19
          return
        end ;; $if_52
      end ;; $block_0
      local.get $1
      i32.const 31
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_53
        call $runtime.nilPanic
        i32.const 31
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_53
      global.get $20
      i32.eqz
      if $if_54
        unreachable
      end ;; $if_54
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $11
    i64.store offset=8 align=4
    local.get $1
    local.get $3
    i32.store offset=16
    local.get $1
    local.get $4
    i32.store offset=20
    local.get $1
    local.get $6
    i32.store offset=24
    local.get $1
    local.get $12
    i64.store offset=28 align=4
    local.get $1
    local.get $13
    i64.store offset=36 align=4
    local.get $1
    local.get $7
    i32.store offset=44
    local.get $1
    local.get $8
    i32.store offset=48
    local.get $1
    local.get $15
    i64.store offset=52 align=4
    local.get $1
    local.get $9
    i32.store offset=60
    local.get $1
    local.get $10
    i32.store offset=64
    local.get $1
    local.get $16
    i64.store offset=68 align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 76
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc.doMarkGlobals (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $0
      end ;; $if
      local.get $0
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        call $runtime.markScheduler
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      local.get $0
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_1
        call $runtime.markGlobals
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.New (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $4
      local.get $3
      i32.load offset=16
      local.set $5
      local.get $3
      i32.load offset=20
      local.set $6
      local.get $3
      i32.load offset=24
      local.set $7
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $5
        global.set $19
        local.get $5
        i32.const 20
        i32.add
        local.tee $2
        i64.const 0
        i64.store align=4
        local.get $5
        i64.const 3
        i64.store offset=12 align=4
        i32.const 66844
        i32.load
        local.set $7
        i32.const 66844
        local.get $5
        i32.const 8
        i32.add
        i32.store
        local.get $5
        local.get $7
        i32.store offset=8
        local.get $1
        i32.const 8
        i32.add
        local.set $4
      end ;; $if_1
      local.get $8
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        local.get $4
        call $github.com/moontrade/nogc.AllocZeroed
        local.set $3
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $4
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $2
        local.get $4
        call $_lparen_github.com/moontrade/nogc.Pointer_rparen_.Unsafe
        local.tee $4
        i32.store
        local.get $5
        i32.const 24
        i32.add
        local.get $4
        i32.store
        local.get $5
        i32.const 16
        i32.add
        local.get $4
        i32.store
        local.get $4
        i32.eqz
        local.set $6
        i32.const 0
        local.set $2
      end ;; $if_3
      block $block_0
        block $block_1
          global.get $20
          i32.eqz
          if $if_4
            local.get $6
            br_if $block_1
            local.get $4
            i32.const 0
            i32.store
            local.get $4
            local.get $1
            i32.store offset=4
            local.get $0
            i32.eqz
            br_if $block_0
            local.get $0
            i32.const 368
            i32.add
            local.tee $2
            i32.load
            local.get $1
            i32.add
            local.set $6
            local.get $2
            local.get $6
            i32.store
            local.get $0
            i32.const 112
            i32.add
            local.tee $2
            i64.load
            local.get $1
            i64.extend_i32_u
            i64.add
            local.set $9
            local.get $2
            local.get $9
            i64.store
            local.get $0
            i32.const 96
            i32.add
            local.tee $2
            i64.load
            i64.const 1
            i64.add
            local.set $9
            local.get $2
            local.get $9
            i64.store
            local.get $0
            i32.const 104
            i32.add
            local.tee $2
            i64.load
            i64.const 1
            i64.add
            local.set $9
            local.get $2
            local.get $9
            i64.store
            local.get $4
            i32.const 8
            i32.add
            local.set $2
          end ;; $if_4
          local.get $8
          i32.const 1
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_5
            local.get $5
            local.get $0
            local.get $2
            i32.const 0
            call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Add
            i32.const 1
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          global.get $20
          i32.eqz
          if $if_6
            local.get $0
            i32.load offset=28
            local.get $2
            i32.gt_u
            if $if_7
              local.get $0
              local.get $2
              i32.store offset=28
            end ;; $if_7
            local.get $2
            local.get $0
            i32.load offset=32
            i32.le_u
            br_if $block_1
            local.get $0
            local.get $2
            i32.store offset=32
          end ;; $if_6
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_8
          i32.const 66844
          local.get $7
          i32.store
          local.get $5
          i32.const 32
          i32.add
          global.set $19
          local.get $2
          return
        end ;; $if_8
      end ;; $block_0
      local.get $8
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_9
        call $runtime.nilPanic
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_9
      global.get $20
      i32.eqz
      if $if_10
        unreachable
      end ;; $if_10
      unreachable
    end ;; $block
    local.set $3
    global.get $21
    i32.load
    local.get $3
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $3
    local.get $4
    i32.store offset=12
    local.get $3
    local.get $5
    i32.store offset=16
    local.get $3
    local.get $6
    i32.store offset=20
    local.get $3
    local.get $7
    i32.store offset=24
    global.get $21
    global.get $21
    i32.load
    i32.const 28
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRecursive (type $5)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $4
      i32.load
      local.set $0
      local.get $4
      i32.load offset=4
      local.set $1
      local.get $4
      i32.load offset=8
      local.set $2
      local.get $4
      i32.load offset=12
      local.set $5
      local.get $4
      i32.load offset=16
      local.set $7
      local.get $4
      i32.load offset=20
      local.set $4
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      local.get $5
      local.get $2
      i32.const 257
      i32.ge_s
      global.get $20
      select
      local.set $5
      block $block_0
        block $block_1
          global.get $20
          i32.eqz
          if $if_1
            local.get $5
            br_if $block_1
            local.get $1
            i32.const 8
            i32.sub
            local.tee $5
            i32.eqz
            br_if $block_0
            local.get $5
            i32.load
            br_if $block_1
            local.get $5
            i32.load offset=4
            local.set $7
          end ;; $if_1
          local.get $3
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_2
            i32.const 66217
            i32.const 13
            call $runtime.printstring
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_2
          local.get $3
          i32.const 1
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_3
            call $runtime.printspace
            i32.const 1
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          local.get $3
          i32.const 2
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_4
            local.get $1
            call $runtime.printuint32
            i32.const 2
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_4
          local.get $3
          i32.const 3
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_5
            call $runtime.printspace
            i32.const 3
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          local.get $3
          i32.const 4
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_6
            i32.const 66230
            i32.const 4
            call $runtime.printstring
            i32.const 4
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_6
          local.get $3
          i32.const 5
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_7
            call $runtime.printspace
            i32.const 5
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_7
          local.get $3
          i32.const 6
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_8
            local.get $7
            call $runtime.printuint32
            i32.const 6
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_8
          local.get $3
          i32.const 7
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_9
            call $runtime.printspace
            i32.const 7
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_9
          local.get $3
          i32.const 8
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_10
            i32.const 66234
            i32.const 5
            call $runtime.printstring
            i32.const 8
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_10
          local.get $3
          i32.const 9
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_11
            call $runtime.printspace
            i32.const 9
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_11
          local.get $3
          i32.const 10
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_12
            local.get $2
            call $runtime.printint32
            i32.const 10
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_12
          local.get $3
          i32.const 11
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_13
            call $runtime.printnl
            i32.const 11
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_13
          global.get $20
          i32.eqz
          if $if_14
            local.get $5
            i32.const 1
            i32.store
            local.get $5
            i32.load offset=4
            local.get $1
            i32.add
            local.tee $5
            local.get $1
            i32.le_u
            br_if $block_1
            local.get $2
            i32.const 1
            i32.add
            local.set $7
          end ;; $if_14
          loop $loop
            global.get $20
            i32.eqz
            if $if_15
              local.get $0
              i32.eqz
              br_if $block_0
              local.get $1
              i32.load
              local.set $2
            end ;; $if_15
            local.get $3
            i32.const 12
            i32.eq
            i32.const 1
            global.get $20
            select
            if $if_16
              local.get $0
              local.get $2
              call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Has
              local.set $6
              i32.const 12
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $6
              local.set $4
            end ;; $if_16
            global.get $20
            i32.const 1
            local.get $4
            local.get $4
            i32.const 1
            i32.and
            i32.eqz
            global.get $20
            select
            local.tee $4
            select
            i32.const 0
            local.get $3
            i32.const 13
            i32.eq
            i32.const 1
            global.get $20
            select
            select
            if $if_17
              local.get $0
              local.get $2
              local.get $7
              call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRecursive
              i32.const 13
              global.get $20
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_17
            global.get $20
            i32.eqz
            if $if_18
              local.get $5
              local.get $1
              i32.const 4
              i32.add
              local.tee $1
              i32.gt_u
              local.tee $2
              br_if $loop
            end ;; $if_18
          end ;; $loop
        end ;; $block_1
        global.get $20
        i32.eqz
        if $if_19
          return
        end ;; $if_19
      end ;; $block_0
      local.get $3
      i32.const 14
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_20
        call $runtime.nilPanic
        i32.const 14
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_20
      global.get $20
      i32.eqz
      if $if_21
        unreachable
      end ;; $if_21
      return
    end ;; $block
    local.set $6
    global.get $21
    i32.load
    local.get $6
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $6
    local.get $0
    i32.store
    local.get $6
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $2
    i32.store offset=8
    local.get $6
    local.get $5
    i32.store offset=12
    local.get $6
    local.get $7
    i32.store offset=16
    local.get $6
    local.get $4
    i32.store offset=20
    global.get $21
    global.get $21
    i32.load
    i32.const 24
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoot (type $3)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=4
      local.set $1
      local.get $2
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $20
      i32.const 1
      local.get $2
      local.get $0
      i32.eqz
      global.get $20
      select
      local.tee $2
      select
      if $if_1
        local.get $3
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_2
          local.get $0
          local.get $1
          call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Has
          local.set $4
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $4
          local.set $2
        end ;; $if_2
        local.get $2
        local.get $2
        i32.const 1
        i32.and
        i32.eqz
        global.get $20
        select
        local.set $2
        block $block_0
          global.get $20
          i32.eqz
          if $if_3
            local.get $2
            br_if $block_0
            local.get $1
            i32.const 8
            i32.sub
            call $_lparen_github.com/moontrade/nogc.Pointer_rparen_.Unsafe
            i32.load offset=4
            local.set $2
          end ;; $if_3
          local.get $3
          i32.const 1
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_4
            i32.const 66239
            i32.const 8
            call $runtime.printstring
            i32.const 1
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_4
          local.get $3
          i32.const 2
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_5
            call $runtime.printspace
            i32.const 2
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          local.get $3
          i32.const 3
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_6
            local.get $1
            call $runtime.printuint32
            i32.const 3
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_6
          local.get $3
          i32.const 4
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_7
            call $runtime.printspace
            i32.const 4
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_7
          local.get $3
          i32.const 5
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_8
            i32.const 66247
            i32.const 4
            call $runtime.printstring
            i32.const 5
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_8
          local.get $3
          i32.const 6
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_9
            call $runtime.printspace
            i32.const 6
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_9
          local.get $3
          i32.const 7
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_10
            local.get $2
            call $runtime.printuint32
            i32.const 7
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_10
          local.get $3
          i32.const 8
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_11
            call $runtime.printnl
            i32.const 8
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_11
          local.get $3
          i32.const 9
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_12
            local.get $0
            local.get $1
            i32.const 0
            call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRecursive
            i32.const 9
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_12
        end ;; $block_0
        global.get $20
        i32.eqz
        if $if_13
          return
        end ;; $if_13
      end ;; $if_1
      local.get $3
      i32.const 10
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_14
        call $runtime.nilPanic
        i32.const 10
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_14
      global.get $20
      i32.eqz
      if $if_15
        unreachable
      end ;; $if_15
      return
    end ;; $block
    local.set $4
    global.get $21
    i32.load
    local.get $4
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $4
    local.get $0
    i32.store
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $4
    local.get $2
    i32.store offset=8
    global.get $21
    global.get $21
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoots (type $5)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $1
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      block $block_0
        global.get $20
        i32.eqz
        if $if_1
          local.get $1
          local.get $2
          i32.ge_u
          local.tee $3
          br_if $block_0
        end ;; $if_1
        loop $loop
          global.get $20
          i32.eqz
          if $if_2
            local.get $1
            i32.load
            local.set $3
          end ;; $if_2
          local.get $4
          i32.const 0
          global.get $20
          select
          i32.eqz
          if $if_3
            local.get $0
            local.get $3
            call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoot
            i32.const 0
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          global.get $20
          i32.eqz
          if $if_4
            local.get $2
            local.get $1
            i32.const 4
            i32.add
            local.tee $1
            i32.gt_u
            local.tee $3
            br_if $loop
          end ;; $if_4
        end ;; $loop
      end ;; $block_0
      return
    end ;; $block
    local.set $4
    global.get $21
    i32.load
    local.get $4
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $4
    local.get $0
    i32.store
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $4
    local.get $2
    i32.store offset=8
    local.get $4
    local.get $3
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.GCStats_rparen_.Print (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i64.load offset=8 align=4
      local.set $3
      local.get $2
      i32.load offset=4
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_1
        i32.const 66251
        i32.const 8
        call $runtime.printstring
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_2
        call $runtime.printnl
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_3
        local.get $1
        i32.const 2
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_4
          call $runtime.nilPanic
          i32.const 2
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_4
        global.get $20
        i32.eqz
        if $if_5
          unreachable
        end ;; $if_5
      end ;; $if_3
      global.get $20
      i32.eqz
      if $if_6
        local.get $0
        i32.load offset=16
        local.set $2
      end ;; $if_6
      local.get $1
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_7
        i32.const 66259
        i32.const 10
        call $runtime.printstring
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_7
      local.get $1
      i32.const 4
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_8
        call $runtime.printspace
        i32.const 4
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_8
      local.get $1
      i32.const 5
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_9
        local.get $2
        call $runtime.printuint32
        i32.const 5
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_9
      local.get $1
      i32.const 6
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_10
        call $runtime.printnl
        i32.const 6
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_10
      global.get $20
      i32.eqz
      if $if_11
        local.get $0
        i32.load offset=288
        local.set $2
      end ;; $if_11
      local.get $1
      i32.const 7
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_12
        i32.const 66269
        i32.const 15
        call $runtime.printstring
        i32.const 7
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_12
      local.get $1
      i32.const 8
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_13
        call $runtime.printspace
        i32.const 8
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_13
      local.get $1
      i32.const 9
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_14
        local.get $2
        call $runtime.printuint32
        i32.const 9
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_14
      local.get $1
      i32.const 10
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_15
        call $runtime.printnl
        i32.const 10
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_15
      global.get $20
      i32.eqz
      if $if_16
        local.get $0
        i32.load offset=40
        local.set $2
      end ;; $if_16
      local.get $1
      i32.const 11
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_17
        i32.const 66284
        i32.const 11
        call $runtime.printstring
        i32.const 11
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_17
      local.get $1
      i32.const 12
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_18
        call $runtime.printspace
        i32.const 12
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_18
      local.get $1
      i32.const 13
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_19
        local.get $2
        call $runtime.printuint32
        i32.const 13
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_19
      local.get $1
      i32.const 14
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_20
        call $runtime.printnl
        i32.const 14
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_20
      global.get $20
      i32.eqz
      if $if_21
        local.get $0
        i32.load offset=24
        local.set $2
      end ;; $if_21
      local.get $1
      i32.const 15
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_22
        i32.const 66295
        i32.const 12
        call $runtime.printstring
        i32.const 15
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_22
      local.get $1
      i32.const 16
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_23
        call $runtime.printspace
        i32.const 16
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_23
      local.get $1
      i32.const 17
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_24
        local.get $2
        call $runtime.printuint32
        i32.const 17
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_24
      local.get $1
      i32.const 18
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_25
        call $runtime.printnl
        i32.const 18
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_25
      global.get $20
      i32.eqz
      if $if_26
        local.get $0
        i32.load offset=48
        local.set $2
      end ;; $if_26
      local.get $1
      i32.const 19
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_27
        i32.const 66307
        i32.const 15
        call $runtime.printstring
        i32.const 19
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_27
      local.get $1
      i32.const 20
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_28
        call $runtime.printspace
        i32.const 20
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_28
      local.get $1
      i32.const 21
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_29
        local.get $2
        call $runtime.printuint32
        i32.const 21
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_29
      local.get $1
      i32.const 22
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_30
        call $runtime.printnl
        i32.const 22
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_30
      global.get $20
      i32.eqz
      if $if_31
        local.get $0
        i32.load offset=64
        local.set $2
      end ;; $if_31
      local.get $1
      i32.const 23
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_32
        i32.const 66322
        i32.const 15
        call $runtime.printstring
        i32.const 23
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_32
      local.get $1
      i32.const 24
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_33
        call $runtime.printspace
        i32.const 24
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_33
      local.get $1
      i32.const 25
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_34
        local.get $2
        call $runtime.printuint32
        i32.const 25
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_34
      local.get $1
      i32.const 26
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_35
        call $runtime.printnl
        i32.const 26
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_35
      global.get $20
      i32.eqz
      if $if_36
        local.get $0
        i32.load offset=32
        local.set $2
      end ;; $if_36
      local.get $1
      i32.const 27
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_37
        i32.const 66337
        i32.const 15
        call $runtime.printstring
        i32.const 27
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_37
      local.get $1
      i32.const 28
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_38
        call $runtime.printspace
        i32.const 28
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_38
      local.get $1
      i32.const 29
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_39
        local.get $2
        call $runtime.printuint32
        i32.const 29
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_39
      local.get $1
      i32.const 30
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_40
        call $runtime.printnl
        i32.const 30
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_40
      global.get $20
      i32.eqz
      if $if_41
        local.get $0
        i32.load offset=272
        local.set $2
      end ;; $if_41
      local.get $1
      i32.const 31
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_42
        i32.const 66352
        i32.const 15
        call $runtime.printstring
        i32.const 31
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_42
      local.get $1
      i32.const 32
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_43
        call $runtime.printspace
        i32.const 32
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_43
      local.get $1
      i32.const 33
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_44
        local.get $2
        call $runtime.printuint32
        i32.const 33
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_44
      local.get $1
      i32.const 34
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_45
        call $runtime.printnl
        i32.const 34
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_45
      global.get $20
      i32.eqz
      if $if_46
        local.get $0
        i32.load offset=280
        local.set $2
      end ;; $if_46
      local.get $1
      i32.const 35
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_47
        i32.const 66367
        i32.const 19
        call $runtime.printstring
        i32.const 35
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_47
      local.get $1
      i32.const 36
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_48
        call $runtime.printspace
        i32.const 36
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_48
      local.get $1
      i32.const 37
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_49
        local.get $2
        call $runtime.printuint32
        i32.const 37
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_49
      local.get $1
      i32.const 38
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_50
        call $runtime.printnl
        i32.const 38
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_50
      global.get $20
      i32.eqz
      if $if_51
        local.get $0
        i64.load offset=240
        call $github.com/moontrade/nogc.toMicros
        local.set $3
      end ;; $if_51
      local.get $1
      i32.const 39
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_52
        i32.const 66386
        i32.const 18
        call $runtime.printstring
        i32.const 39
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_52
      local.get $1
      i32.const 40
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_53
        call $runtime.printspace
        i32.const 40
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_53
      local.get $1
      i32.const 41
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_54
        local.get $3
        call $runtime.printint64
        i32.const 41
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_54
      local.get $1
      i32.const 42
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_55
        call $runtime.printspace
        i32.const 42
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_55
      local.get $1
      i32.const 43
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_56
        i32.const 66404
        i32.const 3
        call $runtime.printstring
        i32.const 43
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_56
      local.get $1
      i32.const 44
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_57
        call $runtime.printnl
        i32.const 44
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_57
      global.get $20
      i32.eqz
      if $if_58
        local.get $0
        i64.load offset=248
        call $github.com/moontrade/nogc.toMicros
        local.set $3
      end ;; $if_58
      local.get $1
      i32.const 45
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_59
        i32.const 66407
        i32.const 18
        call $runtime.printstring
        i32.const 45
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_59
      local.get $1
      i32.const 46
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_60
        call $runtime.printspace
        i32.const 46
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_60
      local.get $1
      i32.const 47
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_61
        local.get $3
        call $runtime.printint64
        i32.const 47
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_61
      local.get $1
      i32.const 48
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_62
        call $runtime.printspace
        i32.const 48
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_62
      local.get $1
      i32.const 49
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_63
        i32.const 66425
        i32.const 3
        call $runtime.printstring
        i32.const 49
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_63
      local.get $1
      i32.const 50
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_64
        call $runtime.printnl
        i32.const 50
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_64
      global.get $20
      i32.eqz
      if $if_65
        local.get $0
        i64.load offset=256
        call $github.com/moontrade/nogc.toMicros
        local.set $3
      end ;; $if_65
      local.get $1
      i32.const 51
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_66
        i32.const 66428
        i32.const 18
        call $runtime.printstring
        i32.const 51
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_66
      local.get $1
      i32.const 52
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_67
        call $runtime.printspace
        i32.const 52
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_67
      local.get $1
      i32.const 53
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_68
        local.get $3
        call $runtime.printint64
        i32.const 53
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_68
      local.get $1
      i32.const 54
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_69
        call $runtime.printspace
        i32.const 54
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_69
      local.get $1
      i32.const 55
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_70
        i32.const 66446
        i32.const 3
        call $runtime.printstring
        i32.const 55
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_70
      local.get $1
      i32.const 56
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_71
        call $runtime.printnl
        i32.const 56
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_71
      global.get $20
      i32.eqz
      if $if_72
        local.get $0
        i64.load offset=264
        call $github.com/moontrade/nogc.toMicros
        local.set $3
      end ;; $if_72
      local.get $1
      i32.const 57
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_73
        i32.const 66449
        i32.const 16
        call $runtime.printstring
        i32.const 57
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_73
      local.get $1
      i32.const 58
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_74
        call $runtime.printspace
        i32.const 58
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_74
      local.get $1
      i32.const 59
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_75
        local.get $3
        call $runtime.printint64
        i32.const 59
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_75
      local.get $1
      i32.const 60
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_76
        call $runtime.printspace
        i32.const 60
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_76
      local.get $1
      i32.const 61
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_77
        i32.const 66465
        i32.const 3
        call $runtime.printstring
        i32.const 61
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_77
      local.get $1
      i32.const 62
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_78
        call $runtime.printnl
        i32.const 62
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_78
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $3
    i64.store offset=8 align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc.toMicros (type $13)
    (param $0 i64)
    (result i64)
    local.get $0
    call $github.com/moontrade/nogc.divOrZero
    )
  
  (func $github.com/moontrade/nogc.divOrZero (type $13)
    (param $0 i64)
    (result i64)
    local.get $0
    i64.const 1000
    i64.div_s
    )
  
  (func $github.com/moontrade/nogc.PrintGCStats (type $1)
    (local $0 i32)
    (local $1 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $21
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        i32.const 66948
        i32.load
        local.set $0
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_2
        local.get $1
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      local.get $0
      local.get $0
      i32.const 80
      i32.add
      global.get $20
      select
      local.set $0
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        local.get $0
        call $_lparen_*github.com/moontrade/nogc.GCStats_rparen_.Print
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc.initGC (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i64)
    (local $6 i64)
    (local $7 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $2
      local.get $1
      i32.load offset=16
      local.set $3
      local.get $1
      i64.load offset=20 align=4
      local.set $6
      local.get $1
      i64.load offset=8 align=4
      local.set $5
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 48
        i32.sub
        local.tee $2
        global.set $19
      end ;; $if_1
      global.get $20
      i32.const 1
      local.get $0
      select
      if $if_2
        local.get $4
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          call $runtime.nilPanic
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      local.get $3
      local.get $2
      i32.const 24
      i32.add
      global.get $20
      select
      local.set $3
      local.get $4
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_5
        local.get $3
        call $github.com/moontrade/nogc.NewPointerSet
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $20
      i32.eqz
      if $if_6
        local.get $2
        i64.load offset=24
        local.set $5
        local.get $2
        i64.load offset=32
        local.set $6
        local.get $2
        i64.load offset=40
        local.set $7
        local.get $0
        i32.const 0
        i32.store offset=32
        local.get $0
        i64.const -3221225472
        i64.store offset=24 align=4
        local.get $0
        local.get $7
        i64.store offset=16 align=4
        local.get $0
        local.get $6
        i64.store offset=8 align=4
        local.get $0
        local.get $5
        i64.store align=4
        local.get $2
        i32.const 8
        i32.add
        local.set $3
      end ;; $if_6
      local.get $4
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_7
        local.get $3
        call $time.Now
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_7
      global.get $20
      i32.eqz
      if $if_8
        local.get $2
        i64.load offset=16
        local.set $6
        local.get $2
        i64.load offset=8
        local.set $5
      end ;; $if_8
      local.get $4
      i32.const 3
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_9
        local.get $5
        local.get $6
        call $_lparen_time.Time_rparen_.UnixNano
        local.set $7
        i32.const 3
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $7
        local.set $5
      end ;; $if_9
      global.get $20
      i32.eqz
      if $if_10
        local.get $0
        local.get $5
        i64.store offset=80
        local.get $2
        i32.const 48
        i32.add
        global.set $19
      end ;; $if_10
      return
    end ;; $block
    local.set $1
    global.get $21
    i32.load
    local.get $1
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $5
    i64.store offset=8 align=4
    local.get $1
    local.get $3
    i32.store offset=16
    local.get $1
    local.get $6
    i64.store offset=20 align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 28
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc.getCollector (type $6)
    (result i32)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i32.load offset=8
      local.set $3
      local.get $2
      i32.load offset=12
      local.set $4
      local.get $2
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $5
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 32
        i32.sub
        local.tee $0
        global.set $19
        local.get $0
        i32.const 8
        i32.add
        i32.const 66948
        i32.load
        local.tee $1
        i32.store
        local.get $0
        i64.const 0
        i64.store offset=20 align=4
        local.get $0
        i64.const 0
        i64.store offset=12 align=4
        local.get $0
        i32.const 5
        i32.store offset=4
        i32.const 66844
        i32.load
        local.set $3
        i32.const 66844
        local.get $0
        i32.store
        local.get $0
        local.get $3
        i32.store
      end ;; $if_1
      block $block_0
        global.get $20
        i32.eqz
        if $if_2
          local.get $1
          br_if $block_0
          local.get $0
          i32.const 20
          i32.add
          local.set $4
        end ;; $if_2
        local.get $5
        i32.const 0
        global.get $20
        select
        i32.eqz
        if $if_3
          i32.const 372
          call $github.com/moontrade/nogc.AllocZeroed
          local.set $2
          i32.const 0
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $2
          local.set $1
        end ;; $if_3
        global.get $20
        i32.eqz
        if $if_4
          local.get $4
          local.get $1
          call $_lparen_github.com/moontrade/nogc.Pointer_rparen_.Unsafe
          local.tee $1
          i32.store
          local.get $0
          i32.const 24
          i32.add
          local.get $1
          i32.store
          local.get $0
          i32.const 16
          i32.add
          local.get $1
          i32.store
          i32.const 66948
          local.get $1
          i32.store
        end ;; $if_4
        local.get $5
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_5
          local.get $1
          call $github.com/moontrade/nogc.initGC
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_5
      end ;; $block_0
      global.get $20
      i32.eqz
      if $if_6
        i32.const 66844
        local.get $3
        i32.store
        local.get $0
        i32.const 12
        i32.add
        i32.const 66948
        i32.load
        local.tee $3
        i32.store
        local.get $0
        i32.const 32
        i32.add
        global.set $19
        local.get $3
        return
      end ;; $if_6
      unreachable
    end ;; $block
    local.set $2
    global.get $21
    i32.load
    local.get $2
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $3
    i32.store offset=8
    local.get $2
    local.get $4
    i32.store offset=12
    global.get $21
    global.get $21
    i32.load
    i32.const 16
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $main.run$gowrapper (type $0)
    (param $0 i32)
    (local $1 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        call $main.run
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $main.main$1$gowrapper (type $0)
    (param $0 i32)
    (local $1 i32)
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_0
        call $main.main$1
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $main.run (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 36
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $0
      i32.load
      local.set $2
      local.get $0
      i32.load offset=8
      local.set $3
      local.get $0
      i32.load offset=12
      local.set $5
      local.get $0
      i32.load offset=16
      local.set $6
      local.get $0
      i32.load offset=20
      local.set $7
      local.get $0
      i32.load offset=24
      local.set $8
      local.get $0
      i32.load offset=28
      local.set $9
      local.get $0
      i32.load offset=32
      local.set $10
      local.get $0
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const -64
        i32.add
        local.tee $2
        global.set $19
        local.get $2
        i32.const 28
        i32.add
        local.tee $5
        i64.const 0
        i64.store align=4
        local.get $2
        i32.const 20
        i32.add
        local.tee $6
        i64.const 0
        i64.store align=4
        local.get $2
        i64.const 0
        i64.store offset=52 align=4
        local.get $2
        i64.const 0
        i64.store offset=44 align=4
        local.get $2
        i64.const 0
        i64.store offset=36 align=4
        local.get $2
        i64.const 11
        i64.store offset=12 align=4
        i32.const 66844
        i32.load
        local.set $3
        i32.const 66844
        local.get $2
        i32.const 8
        i32.add
        i32.store
        local.get $2
        local.get $3
        i32.store offset=8
        local.get $2
        i32.const 16
        i32.add
        local.set $1
      end ;; $if_1
      local.get $4
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        i32.const 12
        i32.const 71
        call $runtime.alloc
        local.set $0
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $0
        local.set $3
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $1
        local.get $3
        i32.store
        local.get $2
        i32.const 40
        i32.add
        local.tee $1
        local.get $3
        i32.store
      end ;; $if_3
      local.get $4
      i32.const 1
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_4
        i32.const 24000
        i32.const 3
        call $runtime.alloc
        local.set $0
        i32.const 1
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $0
        local.set $1
      end ;; $if_4
      global.get $20
      i32.eqz
      if $if_5
        local.get $3
        i64.const 103079215128000
        i64.store offset=4 align=4
        local.get $3
        local.get $1
        i32.store
        local.get $6
        local.get $1
        i32.store
        local.get $2
        i32.const 24
        i32.add
        local.set $1
      end ;; $if_5
      local.get $4
      i32.const 2
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_6
        i32.const 65536
        i32.const 67
        call $runtime.alloc
        local.set $0
        i32.const 2
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $0
        local.set $6
      end ;; $if_6
      global.get $20
      i32.eqz
      if $if_7
        local.get $1
        local.get $6
        i32.store
        local.get $5
        local.get $3
        i32.load
        local.tee $1
        i32.store
        local.get $3
        i32.load offset=4
        i32.eqz
        local.set $5
      end ;; $if_7
      block $block_0
        global.get $20
        i32.eqz
        if $if_8
          local.get $5
          br_if $block_0
          local.get $2
          i32.const 32
          i32.add
          local.set $5
          local.get $2
          i32.const 36
          i32.add
          local.set $7
          local.get $2
          i32.const 48
          i32.add
          local.set $8
          local.get $2
          i32.const 44
          i32.add
          local.set $9
          local.get $2
          i32.const 52
          i32.add
          local.set $10
          local.get $2
          i32.const 56
          i32.add
          local.set $2
        end ;; $if_8
        loop $loop
          global.get $20
          i32.eqz
          if $if_9
            local.get $1
            i32.const 10
            i32.store8
            local.get $5
            local.get $3
            i32.load
            local.tee $1
            i32.store
            local.get $3
            i32.load offset=4
            i32.const 1
            i32.le_u
            br_if $block_0
            local.get $1
            local.get $1
            i32.load8_u offset=1
            i32.const 1
            i32.add
            i32.store8 offset=1
            local.get $7
            local.get $3
            i32.load
            local.tee $1
            i32.store
            local.get $8
            local.get $1
            i32.store
            local.get $9
            local.get $1
            i32.store
            local.get $3
            i32.load offset=4
            i32.eqz
            br_if $block_0
          end ;; $if_9
          local.get $4
          i32.const 3
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_10
            i32.const 66541
            i32.const 9
            call $runtime.printstring
            i32.const 3
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_10
          local.get $4
          i32.const 4
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_11
            call $runtime.printspace
            i32.const 4
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_11
          local.get $4
          i32.const 5
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_12
            local.get $3
            call $runtime.printuint32
            i32.const 5
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_12
          local.get $4
          i32.const 6
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_13
            call $runtime.printspace
            i32.const 6
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_13
          local.get $4
          i32.const 7
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_14
            local.get $1
            call $runtime.printuint32
            i32.const 7
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_14
          local.get $4
          i32.const 8
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_15
            call $runtime.printnl
            i32.const 8
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_15
          local.get $4
          i32.const 9
          i32.eq
          i32.const 1
          global.get $20
          select
          if $if_16
            call $time.Sleep
            i32.const 9
            global.get $20
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_16
          global.get $20
          i32.eqz
          if $if_17
            local.get $6
            i32.const 0
            i32.store
            local.get $10
            local.get $6
            i32.load offset=4
            i32.store
            local.get $2
            local.get $3
            i32.load
            local.tee $1
            i32.store
            local.get $3
            i32.load offset=4
            br_if $loop
          end ;; $if_17
        end ;; $loop
      end ;; $block_0
      local.get $4
      i32.const 10
      i32.eq
      i32.const 1
      global.get $20
      select
      if $if_18
        call $runtime.lookupPanic
        i32.const 10
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_18
      global.get $20
      i32.eqz
      if $if_19
        unreachable
      end ;; $if_19
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $0
    local.get $2
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $3
    i32.store offset=8
    local.get $0
    local.get $5
    i32.store offset=12
    local.get $0
    local.get $6
    i32.store offset=16
    local.get $0
    local.get $7
    i32.store offset=20
    local.get $0
    local.get $8
    i32.store offset=24
    local.get $0
    local.get $9
    i32.store offset=28
    local.get $0
    local.get $10
    i32.store offset=32
    global.get $21
    global.get $21
    i32.load
    i32.const 36
    i32.add
    i32.store
    )
  
  (func $main.main$1 (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i64)
    (local $6 i64)
    (local $7 i64)
    (local $8 i64)
    global.get $20
    i32.const 2
    i32.eq
    if $if
      global.get $21
      global.get $21
      i32.load
      i32.const 36
      i32.sub
      i32.store
      global.get $21
      i32.load
      local.tee $0
      i32.load
      local.set $2
      local.get $0
      i32.load offset=4
      local.set $3
      local.get $0
      i64.load offset=16 align=4
      local.set $6
      local.get $0
      i32.load offset=24
      local.set $4
      local.get $0
      i64.load offset=28 align=4
      local.set $7
      local.get $0
      i64.load offset=8 align=4
      local.set $5
    end ;; $if
    block $block (result i32)
      global.get $20
      i32.const 2
      i32.eq
      if $if_0
        global.get $21
        global.get $21
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $21
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $20
      i32.eqz
      if $if_1
        global.get $19
        i32.const 48
        i32.sub
        local.tee $2
        global.set $19
        local.get $2
        i64.const 1
        i64.store offset=36 align=4
        i32.const 66844
        i32.load
        local.set $3
        i32.const 66844
        local.get $2
        i32.const 32
        i32.add
        local.tee $4
        i32.store
        local.get $2
        local.get $3
        i32.store offset=32
        local.get $2
        i32.const 40
        i32.add
        local.set $3
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $20
      select
      i32.eqz
      if $if_2
        i32.const 2048
        i32.const 3
        call $runtime.alloc
        local.set $0
        i32.const 0
        global.get $20
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $0
        local.set $4
      end ;; $if_2
      global.get $20
      i32.eqz
      if $if_3
        local.get $3
        local.get $4
        i32.store
      end ;; $if_3
      loop $loop
        local.get $3
        local.get $2
        i32.const 16
        i32.add
        global.get $20
        select
        local.set $3
        local.get $1
        i32.const 1
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_4
          local.get $3
          call $time.Now
          i32.const 1
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_4
        global.get $20
        i32.eqz
        if $if_5
          local.get $2
          i64.load offset=24
          local.set $6
          local.get $2
          i64.load offset=16
          local.set $5
        end ;; $if_5
        local.get $1
        i32.const 2
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_6
          local.get $5
          local.get $6
          call $_lparen_time.Time_rparen_.UnixNano
          local.set $8
          i32.const 2
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $8
          local.set $5
        end ;; $if_6
        local.get $1
        i32.const 3
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_7
          call $runtime.GC
          i32.const 3
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        local.get $1
        i32.const 4
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_8
          local.get $2
          call $time.Now
          i32.const 4
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_8
        global.get $20
        i32.eqz
        if $if_9
          local.get $2
          i64.load offset=8
          local.set $7
          local.get $2
          i64.load
          local.set $6
        end ;; $if_9
        local.get $1
        i32.const 5
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_10
          local.get $6
          local.get $7
          call $_lparen_time.Time_rparen_.UnixNano
          local.set $8
          i32.const 5
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $8
          local.set $6
        end ;; $if_10
        local.get $1
        i32.const 6
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_11
          i32.const 66534
          i32.const 7
          call $runtime.printstring
          i32.const 6
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_11
        local.get $1
        i32.const 7
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_12
          call $runtime.printspace
          i32.const 7
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_12
        local.get $5
        local.get $6
        local.get $5
        i64.sub
        global.get $20
        select
        local.set $5
        local.get $1
        i32.const 8
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_13
          local.get $5
          call $runtime.printint64
          i32.const 8
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_13
        local.get $1
        i32.const 9
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_14
          call $runtime.printnl
          i32.const 9
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_14
        local.get $1
        i32.const 10
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_15
          call $github.com/moontrade/nogc.PrintGCStats
          i32.const 10
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_15
        local.get $1
        i32.const 11
        i32.eq
        i32.const 1
        global.get $20
        select
        if $if_16
          call $time.Sleep
          i32.const 11
          global.get $20
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_16
        global.get $20
        i32.eqz
        br_if $loop
      end ;; $loop
      return
    end ;; $block
    local.set $0
    global.get $21
    i32.load
    local.get $0
    i32.store
    global.get $21
    global.get $21
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $21
    i32.load
    local.tee $0
    local.get $2
    i32.store
    local.get $0
    local.get $3
    i32.store offset=4
    local.get $0
    local.get $5
    i64.store offset=8 align=4
    local.get $0
    local.get $6
    i64.store offset=16 align=4
    local.get $0
    local.get $4
    i32.store offset=24
    local.get $0
    local.get $7
    i64.store offset=28 align=4
    global.get $21
    global.get $21
    i32.load
    i32.const 36
    i32.add
    i32.store
    )
  
  (func $tinygo_unwind (type $0)
    (param $0 i32)
    i32.const 66952
    i32.load8_u
    if $if
      call $asyncify_stop_rewind
      i32.const 66952
      i32.const 0
      i32.store8
    else
      local.get $0
      global.get $19
      i32.store offset=4
      local.get $0
      call $asyncify_start_unwind
    end ;; $if
    )
  
  (func $tinygo_launch (type $0)
    (param $0 i32)
    (local $1 i32)
    global.get $19
    local.set $1
    local.get $0
    i32.load offset=12
    global.set $19
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load
    call_indirect $17 (type $0)
    call $asyncify_stop_unwind
    local.get $1
    global.set $19
    )
  
  (func $tinygo_rewind (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $19
    local.set $1
    local.get $0
    i32.load offset=12
    global.set $19
    local.get $0
    i32.load offset=4
    local.set $2
    local.get $0
    i32.load
    local.set $3
    i32.const 66952
    i32.const 1
    i32.store8
    local.get $0
    i32.const 8
    i32.add
    call $asyncify_start_rewind
    local.get $2
    local.get $3
    call_indirect $17 (type $0)
    call $asyncify_stop_unwind
    local.get $1
    global.set $19
    )
  
  (func $memcpy (type $7)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    block $block
      block $block_0
        local.get $1
        i32.const 3
        i32.and
        i32.eqz
        br_if $block_0
        local.get $2
        i32.eqz
        br_if $block_0
        local.get $0
        local.get $1
        i32.load8_u
        i32.store8
        local.get $2
        i32.const 1
        i32.sub
        local.set $5
        local.get $0
        i32.const 1
        i32.add
        local.set $3
        local.get $1
        i32.const 1
        i32.add
        local.tee $4
        i32.const 3
        i32.and
        i32.eqz
        br_if $block
        local.get $5
        i32.eqz
        br_if $block
        local.get $0
        local.get $1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get $2
        i32.const 2
        i32.sub
        local.set $5
        local.get $0
        i32.const 2
        i32.add
        local.set $3
        local.get $1
        i32.const 2
        i32.add
        local.tee $4
        i32.const 3
        i32.and
        i32.eqz
        br_if $block
        local.get $5
        i32.eqz
        br_if $block
        local.get $0
        local.get $1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get $2
        i32.const 3
        i32.sub
        local.set $5
        local.get $0
        i32.const 3
        i32.add
        local.set $3
        local.get $1
        i32.const 3
        i32.add
        local.tee $4
        i32.const 3
        i32.and
        i32.eqz
        br_if $block
        local.get $5
        i32.eqz
        br_if $block
        local.get $0
        local.get $1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get $2
        i32.const 4
        i32.sub
        local.set $5
        local.get $0
        i32.const 4
        i32.add
        local.set $3
        local.get $1
        i32.const 4
        i32.add
        local.set $4
        br $block
      end ;; $block_0
      local.get $2
      local.set $5
      local.get $0
      local.set $3
      local.get $1
      local.set $4
    end ;; $block
    block $block_1
      block $block_2
        local.get $3
        i32.const 3
        i32.and
        local.tee $1
        i32.eqz
        if $if
          block $block_3
            local.get $5
            i32.const 16
            i32.ge_u
            if $if_0
              local.get $5
              i32.const 16
              i32.sub
              local.tee $1
              i32.const 16
              i32.and
              i32.eqz
              if $if_1
                local.get $3
                local.get $4
                i64.load align=4
                i64.store align=4
                local.get $3
                local.get $4
                i64.load offset=8 align=4
                i64.store offset=8 align=4
                local.get $3
                i32.const 16
                i32.add
                local.set $3
                local.get $4
                i32.const 16
                i32.add
                local.set $4
                local.get $1
                local.set $5
              end ;; $if_1
              local.get $1
              i32.const 16
              i32.lt_u
              br_if $block_3
              loop $loop
                local.get $3
                local.get $4
                i64.load align=4
                i64.store align=4
                local.get $3
                i32.const 8
                i32.add
                local.get $4
                i32.const 8
                i32.add
                i64.load align=4
                i64.store align=4
                local.get $3
                i32.const 16
                i32.add
                local.get $4
                i32.const 16
                i32.add
                i64.load align=4
                i64.store align=4
                local.get $3
                i32.const 24
                i32.add
                local.get $4
                i32.const 24
                i32.add
                i64.load align=4
                i64.store align=4
                local.get $3
                i32.const 32
                i32.add
                local.set $3
                local.get $4
                i32.const 32
                i32.add
                local.set $4
                local.get $5
                i32.const 32
                i32.sub
                local.tee $5
                i32.const 15
                i32.gt_u
                br_if $loop
              end ;; $loop
            end ;; $if_0
            local.get $5
            local.set $1
          end ;; $block_3
          local.get $1
          i32.const 8
          i32.and
          if $if_2
            local.get $3
            local.get $4
            i64.load align=4
            i64.store align=4
            local.get $4
            i32.const 8
            i32.add
            local.set $4
            local.get $3
            i32.const 8
            i32.add
            local.set $3
          end ;; $if_2
          local.get $1
          i32.const 4
          i32.and
          if $if_3
            local.get $3
            local.get $4
            i32.load
            i32.store
            local.get $4
            i32.const 4
            i32.add
            local.set $4
            local.get $3
            i32.const 4
            i32.add
            local.set $3
          end ;; $if_3
          local.get $1
          i32.const 2
          i32.and
          if $if_4
            local.get $3
            local.get $4
            i32.load16_u align=1
            i32.store16 align=1
            local.get $4
            i32.const 2
            i32.add
            local.set $4
            local.get $3
            i32.const 2
            i32.add
            local.set $3
          end ;; $if_4
          local.get $1
          i32.const 1
          i32.and
          br_if $block_2
          br $block_1
        end ;; $if
        block $block_4
          local.get $5
          i32.const 32
          i32.lt_u
          br_if $block_4
          block $block_5
            block $block_6
              block $block_7
                local.get $1
                i32.const 1
                i32.sub
                br_table
                  $block_7 $block_6 $block_5
                  $block_4 ;; default
              end ;; $block_7
              local.get $3
              local.get $4
              i32.load
              local.tee $6
              i32.store8
              local.get $3
              local.get $6
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get $3
              local.get $6
              i32.const 8
              i32.shr_u
              i32.store8 offset=1
              local.get $5
              i32.const 3
              i32.sub
              local.set $5
              local.get $3
              i32.const 3
              i32.add
              local.set $8
              i32.const 0
              local.set $1
              loop $loop_0
                local.get $1
                local.get $8
                i32.add
                local.tee $3
                local.get $1
                local.get $4
                i32.add
                local.tee $2
                i32.const 4
                i32.add
                i32.load
                local.tee $7
                i32.const 8
                i32.shl
                local.get $6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get $3
                i32.const 4
                i32.add
                local.get $2
                i32.const 8
                i32.add
                i32.load
                local.tee $6
                i32.const 8
                i32.shl
                local.get $7
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get $3
                i32.const 8
                i32.add
                local.get $2
                i32.const 12
                i32.add
                i32.load
                local.tee $7
                i32.const 8
                i32.shl
                local.get $6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get $3
                i32.const 12
                i32.add
                local.get $2
                i32.const 16
                i32.add
                i32.load
                local.tee $6
                i32.const 8
                i32.shl
                local.get $7
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get $1
                i32.const 16
                i32.add
                local.set $1
                local.get $5
                i32.const 16
                i32.sub
                local.tee $5
                i32.const 16
                i32.gt_u
                br_if $loop_0
              end ;; $loop_0
              local.get $1
              local.get $8
              i32.add
              local.set $3
              local.get $1
              local.get $4
              i32.add
              i32.const 3
              i32.add
              local.set $4
              br $block_4
            end ;; $block_6
            local.get $3
            local.get $4
            i32.load
            local.tee $6
            i32.store16 align=1
            local.get $5
            i32.const 2
            i32.sub
            local.set $5
            local.get $3
            i32.const 2
            i32.add
            local.set $8
            i32.const 0
            local.set $1
            loop $loop_1
              local.get $1
              local.get $8
              i32.add
              local.tee $3
              local.get $1
              local.get $4
              i32.add
              local.tee $2
              i32.const 4
              i32.add
              i32.load
              local.tee $7
              i32.const 16
              i32.shl
              local.get $6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get $3
              i32.const 4
              i32.add
              local.get $2
              i32.const 8
              i32.add
              i32.load
              local.tee $6
              i32.const 16
              i32.shl
              local.get $7
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get $3
              i32.const 8
              i32.add
              local.get $2
              i32.const 12
              i32.add
              i32.load
              local.tee $7
              i32.const 16
              i32.shl
              local.get $6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get $3
              i32.const 12
              i32.add
              local.get $2
              i32.const 16
              i32.add
              i32.load
              local.tee $6
              i32.const 16
              i32.shl
              local.get $7
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get $1
              i32.const 16
              i32.add
              local.set $1
              local.get $5
              i32.const 16
              i32.sub
              local.tee $5
              i32.const 17
              i32.gt_u
              br_if $loop_1
            end ;; $loop_1
            local.get $1
            local.get $8
            i32.add
            local.set $3
            local.get $1
            local.get $4
            i32.add
            i32.const 2
            i32.add
            local.set $4
            br $block_4
          end ;; $block_5
          local.get $3
          local.get $4
          i32.load
          local.tee $6
          i32.store8
          local.get $5
          i32.const 1
          i32.sub
          local.set $5
          local.get $3
          i32.const 1
          i32.add
          local.set $8
          i32.const 0
          local.set $1
          loop $loop_2
            local.get $1
            local.get $8
            i32.add
            local.tee $3
            local.get $1
            local.get $4
            i32.add
            local.tee $2
            i32.const 4
            i32.add
            i32.load
            local.tee $7
            i32.const 24
            i32.shl
            local.get $6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get $3
            i32.const 4
            i32.add
            local.get $2
            i32.const 8
            i32.add
            i32.load
            local.tee $6
            i32.const 24
            i32.shl
            local.get $7
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get $3
            i32.const 8
            i32.add
            local.get $2
            i32.const 12
            i32.add
            i32.load
            local.tee $7
            i32.const 24
            i32.shl
            local.get $6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get $3
            i32.const 12
            i32.add
            local.get $2
            i32.const 16
            i32.add
            i32.load
            local.tee $6
            i32.const 24
            i32.shl
            local.get $7
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get $1
            i32.const 16
            i32.add
            local.set $1
            local.get $5
            i32.const 16
            i32.sub
            local.tee $5
            i32.const 18
            i32.gt_u
            br_if $loop_2
          end ;; $loop_2
          local.get $1
          local.get $8
          i32.add
          local.set $3
          local.get $1
          local.get $4
          i32.add
          i32.const 1
          i32.add
          local.set $4
        end ;; $block_4
        local.get $5
        i32.const 16
        i32.and
        if $if_5
          local.get $3
          local.get $4
          i32.load8_u
          i32.store8
          local.get $3
          local.get $4
          i32.load offset=1 align=1
          i32.store offset=1 align=1
          local.get $3
          local.get $4
          i64.load offset=5 align=1
          i64.store offset=5 align=1
          local.get $3
          local.get $4
          i32.load16_u offset=13 align=1
          i32.store16 offset=13 align=1
          local.get $3
          local.get $4
          i32.load8_u offset=15
          i32.store8 offset=15
          local.get $4
          i32.const 16
          i32.add
          local.set $4
          local.get $3
          i32.const 16
          i32.add
          local.set $3
        end ;; $if_5
        local.get $5
        i32.const 8
        i32.and
        if $if_6
          local.get $3
          local.get $4
          i64.load align=1
          i64.store align=1
          local.get $4
          i32.const 8
          i32.add
          local.set $4
          local.get $3
          i32.const 8
          i32.add
          local.set $3
        end ;; $if_6
        local.get $5
        i32.const 4
        i32.and
        if $if_7
          local.get $3
          local.get $4
          i32.load align=1
          i32.store align=1
          local.get $4
          i32.const 4
          i32.add
          local.set $4
          local.get $3
          i32.const 4
          i32.add
          local.set $3
        end ;; $if_7
        local.get $5
        i32.const 2
        i32.and
        if $if_8
          local.get $3
          local.get $4
          i32.load16_u align=1
          i32.store16 align=1
          local.get $4
          i32.const 2
          i32.add
          local.set $4
          local.get $3
          i32.const 2
          i32.add
          local.set $3
        end ;; $if_8
        local.get $5
        i32.const 1
        i32.and
        i32.eqz
        br_if $block_1
      end ;; $block_2
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
    end ;; $block_1
    local.get $0
    )
  
  (func $memset (type $7)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i64)
    block $block
      local.get $2
      i32.eqz
      br_if $block
      local.get $0
      local.get $1
      i32.store8
      local.get $0
      local.get $2
      i32.add
      local.tee $3
      i32.const 1
      i32.sub
      local.get $1
      i32.store8
      local.get $2
      i32.const 3
      i32.lt_u
      br_if $block
      local.get $0
      local.get $1
      i32.store8 offset=2
      local.get $0
      local.get $1
      i32.store8 offset=1
      local.get $3
      i32.const 3
      i32.sub
      local.get $1
      i32.store8
      local.get $3
      i32.const 2
      i32.sub
      local.get $1
      i32.store8
      local.get $2
      i32.const 7
      i32.lt_u
      br_if $block
      local.get $0
      local.get $1
      i32.store8 offset=3
      local.get $3
      i32.const 4
      i32.sub
      local.get $1
      i32.store8
      local.get $2
      i32.const 9
      i32.lt_u
      br_if $block
      i32.const 0
      local.get $0
      i32.sub
      i32.const 3
      i32.and
      local.tee $4
      local.get $0
      i32.add
      local.tee $3
      local.get $1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee $1
      i32.store
      local.get $2
      local.get $4
      i32.sub
      i32.const -4
      i32.and
      local.tee $4
      local.get $3
      i32.add
      local.tee $2
      i32.const 4
      i32.sub
      local.get $1
      i32.store
      local.get $4
      i32.const 9
      i32.lt_u
      br_if $block
      local.get $3
      local.get $1
      i32.store offset=8
      local.get $3
      local.get $1
      i32.store offset=4
      local.get $2
      i32.const 8
      i32.sub
      local.get $1
      i32.store
      local.get $2
      i32.const 12
      i32.sub
      local.get $1
      i32.store
      local.get $4
      i32.const 25
      i32.lt_u
      br_if $block
      local.get $3
      local.get $1
      i32.store offset=24
      local.get $3
      local.get $1
      i32.store offset=20
      local.get $3
      local.get $1
      i32.store offset=16
      local.get $3
      local.get $1
      i32.store offset=12
      local.get $2
      i32.const 16
      i32.sub
      local.get $1
      i32.store
      local.get $2
      i32.const 20
      i32.sub
      local.get $1
      i32.store
      local.get $2
      i32.const 24
      i32.sub
      local.get $1
      i32.store
      local.get $2
      i32.const 28
      i32.sub
      local.get $1
      i32.store
      local.get $4
      local.get $3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee $4
      i32.sub
      local.tee $2
      i32.const 32
      i32.lt_u
      br_if $block
      local.get $1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set $5
      local.get $3
      local.get $4
      i32.add
      local.set $1
      loop $loop
        local.get $1
        local.get $5
        i64.store
        local.get $1
        i32.const 24
        i32.add
        local.get $5
        i64.store
        local.get $1
        i32.const 16
        i32.add
        local.get $5
        i64.store
        local.get $1
        i32.const 8
        i32.add
        local.get $5
        i64.store
        local.get $1
        i32.const 32
        i32.add
        local.set $1
        local.get $2
        i32.const 32
        i32.sub
        local.tee $2
        i32.const 31
        i32.gt_u
        br_if $loop
      end ;; $loop
    end ;; $block
    local.get $0
    )
  
  (func $asyncify_start_unwind (type $0)
    (param $0 i32)
    i32.const 1
    global.set $20
    local.get $0
    global.set $21
    global.get $21
    i32.load
    global.get $21
    i32.load offset=4
    i32.gt_u
    if $if
      unreachable
    end ;; $if
    )
  
  (func $asyncify_stop_unwind (type $1)
    i32.const 0
    global.set $20
    global.get $21
    i32.load
    global.get $21
    i32.load offset=4
    i32.gt_u
    if $if
      unreachable
    end ;; $if
    )
  
  (func $asyncify_start_rewind (type $0)
    (param $0 i32)
    i32.const 2
    global.set $20
    local.get $0
    global.set $21
    global.get $21
    i32.load
    global.get $21
    i32.load offset=4
    i32.gt_u
    if $if
      unreachable
    end ;; $if
    )
  
  (func $asyncify_stop_rewind (type $1)
    i32.const 0
    global.set $20
    global.get $21
    i32.load
    global.get $21
    i32.load offset=4
    i32.gt_u
    if $if
      unreachable
    end ;; $if
    )
  
  (func $asyncify_get_state (type $6)
    (result i32)
    global.get $20
    )
  
  (data $23 (i32.const 65536)
    "\00\01\1c\02\1d\0e\18\03\1e\16\14\0f\19\11\04\08\1f\1b\0d\17\15\13\10\07\1a\0c\12\06\0b\05\n\09\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05"
    "\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07"
    "\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08"
    "\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08"
    "\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08nil\00\00\00\00\00 \01\01\00\03\00\00\00allocation too l"
    "arge\00\00\00\000\01\01\00\14\00\00\00used block is not valid to be freed or reallocat"
    "ed\00\00\00\00\00\00P\01\01\002\00\00\00stack overflowstack overflowinvalid channel stat"
    "eclose of nil channelclose of closed channelclose channel during"
    " sendcurrentTaskmarkSleepQueueTaskpanic: panic: runtime error: n"
    "il pointer dereferenceindex out of rangedivide by zerounreachabl"
    "e\00\00\00\00\00\00\00v\02\01\00\0b\00\00\00itemsizecolorGC sweepsizemarkRecursivesizedepthm"
    "arkRootsizeGC cycle\09live:\09\09\09\09\09live bytes:\09\09\09\09frees:\09\09\09\09\09allocs:\09"
    "\09\09\09\09freed bytes:\09\09\09sweep bytes:\09\09\09total bytes:\09\09\09last sweep:\09\09\09\09"
    "last sweep bytes:\09\09last mark time:\09\09\c2\b5s\09last graph time:\09\c2\b5s\09las"
    "t sweep time:\09\c2\b5s\09last GC time:\09\09\c2\b5sallocator is already initial"
    "izedgcAllocgcMarkTaskhi moontrade!donefull GCb address")
  
  (data $24 (i32.const 66552)
    "\90\05\01\00\00\00\01\00\90\05\01\00\1c\04\01\00\00\00\00\00")
  
  ;;(custom_section "producers"
  ;;  (after data)
  ;;  "\02\08language\01\03C99\00\0cprocessed-by\01\05c"
  ;;  "lang\\13.0.0 (https://github.com/"
  ;;  "tinygo-org/llvm-project 7b5afb55"
  ;;  "f5c7959a2903978a25774c75172e8741"
  ;;  ")")
  
  )
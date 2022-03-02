(module
  (type $0 (func (param i32)))
  (type $1 (func))
  (type $2 (func (param i32 i32)))
  (type $3 (func (param i32) (result i32)))
  (type $4 (func (param i32 i32) (result i32)))
  (type $5 (func (result i32)))
  (type $6 (func (param i32 i32 i32)))
  (type $7 (func (param i64)))
  (type $8 (func (param i32 i32 i32) (result i32)))
  (type $9 (func (param i32 i32 i32 i32 i32)))
  (type $10 (func (param i32 i32 i32 i32)))
  (type $11 (func (param i32 i32 i32 i32) (result i32)))
  (type $12 (func (param i32 i64 i32) (result i32)))
  (type $13 (func (result i64)))
  (type $14 (func (param i64 i64) (result i64)))
  (import "wasi_snapshot_preview1" "fd_write" (func $runtime.fd_write (param i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func $runtime.clock_time_get (param i32 i64 i32) (result i32)))
  (import "env" "setTimeout" (func $setTimeout (param i64)))
  (memory $16  2)
  (table $15  5 5 funcref)
  (global $17  (mut i32) (i32.const 65536))
  (global $18  (mut i32) (i32.const 0))
  (global $19  (mut i32) (i32.const 0))
  (export "memory" (memory $16))
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
  (elem $20 (i32.const 1)
    $github.com/moontrade/nogc.GrowMin $runtime.run$1$gowrapper $main.main$1$gowrapper $main.main$2$gowrapper)
  
  (func $__wasm_call_ctors (type $1)
    nop
    )
  
  (func $math/bits.TrailingZeros32 (type $3)
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
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i64)
    (local $13 i64)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 40
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $4
      i32.load
      local.set $0
      local.get $4
      i32.load offset=8
      local.set $3
      local.get $4
      i32.load offset=12
      local.set $2
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
      i32.load offset=32
      local.set $10
      local.get $4
      i32.load offset=36
      local.set $11
      local.get $4
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 80
        i32.sub
        local.tee $3
        global.set $17
        local.get $3
        i64.const 60129542144
        i64.store offset=16
        local.get $3
        i64.const 0
        i64.store offset=72
        local.get $3
        i64.const 0
        i64.store offset=64
        local.get $3
        i64.const 0
        i64.store offset=56
        local.get $3
        i64.const 0
        i64.store offset=48
        local.get $3
        i64.const 0
        i64.store offset=40
        local.get $3
        i64.const 0
        i64.store offset=32
        local.get $3
        i64.const 0
        i64.store offset=24
        i32.const 66740
        i32.load
        local.set $10
        i32.const 66740
        local.get $3
        i32.const 16
        i32.add
        i32.store
        local.get $3
        local.get $10
        i32.store offset=16
        local.get $1
        i32.const 1073741821
        i32.ge_u
        local.set $2
      end ;; $if_1
      block $block_0
        block $block_1
          block $block_2
            block $block_3
              block $block_4
                global.get $18
                i32.eqz
                if $if_2
                  local.get $2
                  br_if $block_4
                  local.get $3
                  i32.const 24
                  i32.add
                  local.set $5
                  local.get $1
                  i32.const 19
                  i32.add
                  i32.const -16
                  i32.and
                  i32.const 4
                  i32.sub
                  i32.const 12
                  local.get $1
                  i32.const 12
                  i32.gt_u
                  local.tee $1
                  select
                  local.set $2
                end ;; $if_2
                local.get $8
                i32.const 0
                global.get $18
                select
                i32.eqz
                if $if_3
                  local.get $0
                  local.get $2
                  call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.searchBlock
                  local.set $4
                  i32.const 0
                  global.get $18
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                  local.get $4
                  local.set $1
                end ;; $if_3
                global.get $18
                i32.eqz
                if $if_4
                  local.get $5
                  local.get $1
                  i32.store
                  local.get $1
                  br_if $block_2
                  local.get $0
                  i32.eqz
                  br_if $block_0
                  local.get $3
                  i32.const 28
                  i32.add
                  local.get $0
                  i32.load offset=16
                  i32.store
                  local.get $3
                  i32.const 32
                  i32.add
                  local.tee $5
                  local.get $0
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee $1
                  i32.store
                  local.get $1
                  br_if $block_3
                  i32.const 0
                  local.set $5
                  br $block_1
                end ;; $if_4
              end ;; $block_4
              local.get $8
              i32.const 1
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_5
                i32.const 65864
                call $runtime._panic
                i32.const 1
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_5
              global.get $18
              i32.eqz
              if $if_6
                unreachable
              end ;; $if_6
            end ;; $block_3
            global.get $18
            i32.eqz
            if $if_7
              local.get $2
              local.set $6
              local.get $2
              i32.const 536870909
              i32.le_u
              if $if_8
                local.get $2
                i32.const -1
                i32.const -1
                i32.const 27
                local.get $2
                call $github.com/moontrade/nogc/alloc/tlsf.clz
                i32.sub
                local.tee $1
                i32.shl
                i32.const -1
                i32.xor
                local.get $1
                i32.const 31
                i32.gt_u
                select
                i32.add
                local.set $6
              end ;; $if_8
              local.get $3
              i32.const 36
              i32.add
              local.get $0
              i32.load
              local.tee $1
              i32.store
              local.get $0
              i32.const 80
              i32.add
              i32.load
              local.set $7
              local.get $3
              i32.const 40
              i32.add
              local.get $1
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getTail
              local.tee $1
              i32.store
              local.get $3
              i32.const 44
              i32.add
              local.get $1
              i32.store
              local.get $3
              i32.const 48
              i32.add
              local.get $0
              i32.load offset=16
              local.tee $11
              i32.store
              local.get $3
              i32.const 52
              i32.add
              local.get $0
              i32.load offset=20
              local.tee $9
              i32.store
              local.get $9
              i32.eqz
              br_if $block_0
              local.get $6
              i32.const 0
              i32.const 4
              local.get $7
              i32.const 16
              i32.shl
              local.get $1
              i32.const 4
              i32.ne
              i32.sub
              local.tee $1
              i32.shl
              local.get $1
              i32.const 31
              i32.gt_u
              select
              i32.add
              local.tee $1
              i32.const 65535
              i32.add
              i32.const 16
              i32.shr_s
              local.set $6
              i32.const 0
              local.set $5
            end ;; $if_7
            local.get $8
            i32.const 2
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_9
              local.get $3
              local.get $7
              local.get $6
              local.get $1
              local.get $11
              local.get $9
              call_indirect $15 (type $9)
              i32.const 2
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_9
            global.get $18
            i32.eqz
            if $if_10
              local.get $3
              i32.load offset=4
              local.tee $9
              i32.eqz
              br_if $block_1
              local.get $3
              i32.load offset=8
              local.tee $1
              i32.eqz
              br_if $block_1
              local.get $3
              i32.load
              local.tee $7
              i32.eqz
              if $if_11
                local.get $1
                local.get $9
                i32.sub
                local.tee $7
                i32.const 16
                i32.shr_u
                local.get $7
                i32.const 65535
                i32.and
                i32.const 0
                i32.ne
                i32.add
                local.set $7
              end ;; $if_11
              local.get $0
              local.get $1
              i32.store offset=8
              local.get $0
              local.get $7
              local.get $0
              i32.load offset=80
              i32.add
              local.tee $6
              i32.store offset=80
            end ;; $if_10
            local.get $8
            i32.const 3
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_12
              local.get $0
              local.get $9
              local.get $1
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.addMemory
              i32.const 3
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_12
            local.get $6
            local.get $3
            i32.const 56
            i32.add
            global.get $18
            select
            local.set $6
            local.get $8
            i32.const 4
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_13
              local.get $0
              local.get $2
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.searchBlock
              local.set $4
              i32.const 4
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $4
              local.set $1
            end ;; $if_13
            global.get $18
            i32.eqz
            if $if_14
              local.get $6
              local.get $1
              i32.store
              local.get $1
              i32.eqz
              local.tee $6
              br_if $block_1
            end ;; $if_14
          end ;; $block_2
          global.get $18
          i32.eqz
          if $if_15
            local.get $3
            i32.const 60
            i32.add
            local.get $1
            i32.store
            local.get $3
            i32.const -64
            i32.sub
            local.tee $5
            local.get $1
            i32.store
          end ;; $if_15
          local.get $8
          i32.const 5
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_16
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.removeBlock
            i32.const 5
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_16
          global.get $18
          i32.eqz
          if $if_17
            local.get $1
            i32.load
            local.tee $5
            i32.const -4
            i32.and
            local.get $2
            i32.sub
            local.tee $9
            i32.const 16
            i32.lt_u
            local.set $6
          end ;; $if_17
          block $block_5
            block $block_6
              global.get $18
              i32.eqz
              if $if_18
                local.get $6
                br_if $block_6
                local.get $1
                local.get $2
                local.get $5
                i32.const 2
                i32.and
                i32.or
                i32.store
                local.get $3
                i32.const 68
                i32.add
                local.get $1
                local.get $2
                i32.add
                i32.const 4
                i32.add
                local.tee $2
                i32.store
                local.get $3
                i32.const 72
                i32.add
                local.get $2
                i32.store
                local.get $2
                i32.eqz
                br_if $block_0
                local.get $2
                local.get $9
                i32.const 3
                i32.sub
                local.tee $5
                i32.store
              end ;; $if_18
              local.get $8
              i32.const 6
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_19
                local.get $0
                local.get $2
                call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.insertBlock
                i32.const 6
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_19
              global.get $18
              i32.eqz
              br_if $block_5
            end ;; $block_6
            global.get $18
            i32.eqz
            if $if_20
              local.get $1
              local.get $5
              i32.const -2
              i32.and
              local.tee $2
              i32.store
              local.get $3
              i32.const 76
              i32.add
              local.set $5
            end ;; $if_20
            local.get $8
            i32.const 7
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_21
              local.get $1
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getRight
              local.set $4
              i32.const 7
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $4
              local.set $2
            end ;; $if_21
            global.get $18
            i32.eqz
            if $if_22
              local.get $5
              local.get $2
              i32.store
              local.get $2
              i32.eqz
              br_if $block_0
              local.get $2
              local.get $2
              i32.load
              i32.const -3
              i32.and
              local.tee $5
              i32.store
            end ;; $if_22
          end ;; $block_5
          global.get $18
          i32.eqz
          if $if_23
            local.get $0
            i32.eqz
            br_if $block_0
            local.get $1
            i64.load32_u
            i64.const 4294967292
            i64.and
            local.tee $13
            local.get $0
            i32.const 40
            i32.add
            local.tee $2
            i64.load
            i64.add
            local.set $12
            local.get $2
            local.get $12
            i64.store
            local.get $12
            local.get $0
            i32.const 48
            i32.add
            i64.load
            i64.gt_s
            if $if_24
              local.get $0
              local.get $12
              i64.store offset=48
            end ;; $if_24
            local.get $0
            i32.const 56
            i32.add
            local.tee $2
            i64.load
            local.get $13
            i64.sub
            local.set $12
            local.get $2
            local.get $12
            i64.store
            local.get $0
            i32.const -64
            i32.sub
            local.tee $0
            i32.load
            i32.const 1
            i32.add
            local.set $2
            local.get $0
            local.get $2
            i32.store
            local.get $1
            local.set $5
          end ;; $if_23
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_25
          i32.const 66740
          local.get $10
          i32.store
          local.get $3
          i32.const 80
          i32.add
          global.set $17
          local.get $5
          return
        end ;; $if_25
      end ;; $block_0
      local.get $8
      i32.const 8
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_26
        call $runtime.nilPanic
        i32.const 8
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_26
      global.get $18
      i32.eqz
      if $if_27
        unreachable
      end ;; $if_27
      unreachable
    end ;; $block
    local.set $4
    global.get $19
    i32.load
    local.get $4
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $4
    local.get $0
    i32.store
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $4
    local.get $3
    i32.store offset=8
    local.get $4
    local.get $2
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
    local.get $4
    local.get $10
    i32.store offset=32
    local.get $4
    local.get $11
    i32.store offset=36
    global.get $19
    global.get $19
    i32.load
    i32.const 40
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
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if
      global.get $18
      i32.eqz
      if $if_0
        block $block_0
          local.get $0
          i32.eqz
          br_if $block_0
          local.get $0
          i32.load
          local.tee $0
          block $block_1 (result i32)
            local.get $1
            i32.const 256
            i32.ge_u
            if $if_1
              local.get $1
              i32.const 536870909
              i32.le_u
              if $if_2
                i32.const 0
                i32.const 1
                i32.const 27
                local.get $1
                call $github.com/moontrade/nogc/alloc/tlsf.clz
                i32.sub
                local.tee $2
                i32.shl
                local.get $2
                i32.const 31
                i32.gt_u
                select
                local.get $1
                i32.add
                i32.const 1
                i32.sub
                local.set $1
              end ;; $if_2
              i32.const 16
              local.get $1
              i32.const 27
              local.get $1
              call $github.com/moontrade/nogc/alloc/tlsf.clz
              local.tee $2
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
              br $block_1
            end ;; $if_1
            local.get $1
            i32.const 4
            i32.shr_u
            local.set $1
            i32.const 0
          end ;; $block_1
          local.tee $2
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
          if $if_3
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
            if $if_4 (result i32)
              local.get $0
              local.get $2
              call $math/bits.TrailingZeros32
              local.tee $1
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getSL
              call $math/bits.TrailingZeros32
              local.set $2
              local.get $0
              local.get $1
              local.get $2
              call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead
            else
              local.get $1
            end ;; $if_4
            return
          end ;; $if_3
          local.get $0
          local.get $2
          local.get $1
          call $math/bits.TrailingZeros32
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead
          return
        end ;; $block_0
      end ;; $if_0
      local.get $3
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_5
        call $runtime.nilPanic
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $18
      i32.eqz
      if $if_6
        unreachable
      end ;; $if_6
      unreachable
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime._panic (type $0)
    (param $0 i32)
    (local $1 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $19
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      local.get $1
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_1
        i32.const 66039
        i32.const 7
        call $runtime.printstring
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_2
        local.get $0
        call $runtime.printitf
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $1
      i32.const 2
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_3
        call $runtime.printnl
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      global.get $18
      i32.eqz
      if $if_4
        unreachable
      end ;; $if_4
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.clz (type $3)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    local.get $0
    i32.const 65535
    i32.gt_u
    local.tee $1
    i32.const 4
    i32.shl
    local.tee $2
    i32.const 8
    i32.or
    local.get $2
    local.get $0
    i32.const 16
    i32.shr_u
    local.get $0
    local.get $1
    select
    local.tee $0
    i32.const 255
    i32.gt_u
    local.tee $1
    select
    local.set $2
    i32.const 32
    local.get $2
    local.get $0
    i32.const 8
    i32.shr_u
    local.get $0
    local.get $1
    select
    i32.const 65568
    i32.add
    i32.load8_u
    i32.add
    i32.sub
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getTail (type $3)
    (param $0 i32)
    (result i32)
    local.get $0
    i32.load offset=1568
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.addMemory (type $6)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i64)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      local.get $3
      local.get $0
      i32.eqz
      global.get $18
      select
      local.set $3
      block $block_0
        global.get $18
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
          global.get $18
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
          global.get $18
          select
          i32.eqz
          if $if_3
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.insertBlock
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
        end ;; $block_2
        global.get $18
        i32.eqz
        if $if_4
          return
        end ;; $if_4
      end ;; $block_0
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_5
        call $runtime.nilPanic
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $18
      i32.eqz
      if $if_6
        unreachable
      end ;; $if_6
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.removeBlock (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $5
      end ;; $if
      global.get $18
      i32.eqz
      if $if_0
        block $block_0
          local.get $0
          i32.eqz
          br_if $block_0
          local.get $1
          i32.eqz
          br_if $block_0
          local.get $0
          i32.load
          local.set $4
          block $block_1 (result i32)
            local.get $1
            i32.load
            local.tee $2
            i32.const -4
            i32.and
            local.tee $0
            i32.const 256
            i32.lt_u
            if $if_1
              local.get $2
              i32.const 4
              i32.shr_u
              local.set $3
              i32.const 0
              br $block_1
            end ;; $if_1
            i32.const 27
            local.get $0
            i32.const 1073741820
            local.get $0
            i32.const 1073741820
            i32.lt_u
            select
            local.tee $0
            call $github.com/moontrade/nogc/alloc/tlsf.clz
            local.tee $2
            i32.sub
            local.set $3
            i32.const 16
            local.get $0
            local.get $3
            i32.shr_u
            i32.const 16
            i32.xor
            local.get $3
            i32.const 31
            i32.gt_u
            select
            local.set $3
            i32.const 24
            local.get $2
            i32.sub
          end ;; $block_1
          local.set $2
          local.get $1
          i32.load offset=8
          local.set $0
          local.get $1
          i32.load offset=4
          local.tee $6
          if $if_2
            local.get $6
            local.get $0
            i32.store offset=8
          end ;; $if_2
          local.get $0
          if $if_3
            local.get $0
            local.get $6
            i32.store offset=4
          end ;; $if_3
          block $block_2
            local.get $4
            local.get $2
            local.get $3
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead
            local.get $1
            i32.ne
            br_if $block_2
            local.get $4
            local.get $2
            local.get $3
            local.get $0
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
            local.get $0
            br_if $block_2
            local.get $4
            local.get $2
            local.get $4
            local.get $2
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getSL
            i32.const -1
            i32.const -2
            local.get $3
            i32.rotl
            local.get $3
            i32.const 31
            i32.gt_u
            select
            i32.and
            local.tee $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setSL
            local.get $1
            br_if $block_2
            local.get $4
            i32.eqz
            br_if $block_0
            local.get $4
            local.get $4
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
        end ;; $block_0
      end ;; $if_0
      local.get $5
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_4
        call $runtime.nilPanic
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      global.get $18
      i32.eqz
      if $if_5
        unreachable
      end ;; $if_5
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.insertBlock (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      local.get $2
      local.get $0
      i32.eqz
      global.get $18
      select
      local.set $2
      block $block_0
        global.get $18
        i32.eqz
        if $if_1
          local.get $2
          br_if $block_0
          local.get $1
          i32.eqz
          local.tee $2
          br_if $block_0
          local.get $1
          i32.load
          local.set $4
          local.get $0
          i32.load
          local.set $5
        end ;; $if_1
        local.get $8
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_2
          local.get $1
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getRight
          local.set $3
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $3
          local.set $2
        end ;; $if_2
        global.get $18
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
        global.get $18
        i32.const 1
        local.get $6
        select
        if $if_4
          local.get $8
          i32.const 1
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_5
            local.get $0
            local.get $2
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.removeBlock
            i32.const 1
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          global.get $18
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
          global.get $18
          select
          if $if_7
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getRight
            local.set $3
            i32.const 2
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $3
            local.set $2
          end ;; $if_7
          global.get $18
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
        global.get $18
        select
        local.set $6
        block $block_1
          global.get $18
          i32.eqz
          if $if_9
            local.get $6
            br_if $block_1
            local.get $1
            i32.const 4
            i32.sub
            i32.load
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
          global.get $18
          select
          if $if_10
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.removeBlock
            i32.const 3
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_10
          global.get $18
          i32.eqz
          if $if_11
            local.get $1
            local.get $6
            local.get $4
            i32.const 4
            i32.add
            i32.const -4
            i32.and
            i32.add
            local.tee $4
            i32.store
          end ;; $if_11
        end ;; $block_1
        global.get $18
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
          local.get $1
          local.get $5
          block $block_2 (result i32)
            local.get $4
            i32.const -4
            i32.and
            local.tee $2
            i32.const 255
            i32.le_u
            if $if_13
              local.get $4
              i32.const 4
              i32.shr_u
              local.set $4
              i32.const 0
              br $block_2
            end ;; $if_13
            i32.const 27
            local.get $2
            i32.const 1073741820
            local.get $2
            i32.const 1073741820
            i32.lt_u
            select
            local.tee $2
            call $github.com/moontrade/nogc/alloc/tlsf.clz
            local.tee $0
            i32.sub
            local.set $4
            i32.const 16
            local.get $2
            local.get $4
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
          end ;; $block_2
          local.tee $2
          local.get $4
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead
          local.tee $0
          i32.store offset=8
          local.get $1
          i32.const 0
          i32.store offset=4
          local.get $0
          if $if_14
            local.get $0
            local.get $1
            i32.store offset=4
          end ;; $if_14
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
        end ;; $if_12
      end ;; $block_0
      local.get $8
      i32.const 4
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_15
        call $runtime.nilPanic
        i32.const 4
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_15
      global.get $18
      i32.eqz
      if $if_16
        unreachable
      end ;; $if_16
      return
    end ;; $block
    local.set $3
    global.get $19
    i32.load
    local.get $3
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 28
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.tlsfBlock_rparen_.getRight (type $3)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $19
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $18
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $18
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $18
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
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime.nilPanic (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_0
        i32.const 66068
        i32.const 23
        call $runtime.runtimePanic
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
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
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.getHead (type $8)
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
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setSL (type $6)
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
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setTail (type $2)
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
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 32
        i32.sub
        local.tee $4
        global.set $17
        local.get $4
        i32.const 20
        i32.add
        local.tee $5
        i64.const 0
        i64.store align=4
        local.get $4
        i64.const 3
        i64.store offset=12 align=4
        i32.const 66740
        i32.load
        local.set $6
        i32.const 66740
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
      global.get $18
      select
      i32.eqz
      if $if_2
        local.get $0
        local.get $1
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.allocateBlock
        local.set $2
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $0
      end ;; $if_2
      global.get $18
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
          i32.const 0
          local.get $1
          call $memset
          drop
        end ;; $if_4
        i32.const 66740
        local.get $6
        i32.store
        local.get $4
        i32.const 32
        i32.add
        global.set $17
        local.get $5
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 24
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $github.com/moontrade/nogc/alloc/tlsf.checkUsedBlock (type $3)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $19
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      local.get $2
      local.get $0
      i32.eqz
      global.get $18
      select
      local.set $2
      block $block_0
        block $block_1
          global.get $18
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
          global.get $18
          select
          i32.eqz
          if $if_2
            i32.const 65928
            call $runtime._panic
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_2
          global.get $18
          i32.eqz
          if $if_3
            unreachable
          end ;; $if_3
        end ;; $block_1
        local.get $1
        i32.const 1
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_4
          call $runtime.nilPanic
          i32.const 1
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_4
        global.get $18
        i32.eqz
        if $if_5
          unreachable
        end ;; $if_5
      end ;; $block_0
      global.get $18
      i32.eqz
      if $if_6
        local.get $0
        return
      end ;; $if_6
      unreachable
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.freeBlock (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i64)
    (local $6 i64)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      local.get $2
      local.get $1
      i32.eqz
      global.get $18
      select
      local.set $2
      block $block_0
        global.get $18
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
        global.get $18
        select
        i32.eqz
        if $if_2
          local.get $0
          local.get $1
          call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.insertBlock
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $18
        i32.eqz
        if $if_3
          return
        end ;; $if_3
      end ;; $block_0
      local.get $3
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_4
        call $runtime.nilPanic
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_4
      global.get $18
      i32.eqz
      if $if_5
        unreachable
      end ;; $if_5
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
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
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $19
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $18
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $18
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $18
      i32.eqz
      if $if_4
        local.get $0
        i32.load
        local.set $1
        local.get $0
        i32.const 66740
        i32.load
        i32.store
        i32.const 66740
        local.get $1
        i32.store
      end ;; $if_4
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $_lparen_*internal/task.Queue_rparen_.Empty (type $5)
    (result i32)
    i32.const 66728
    i32.load
    i32.eqz
    )
  
  (func $_lparen_*internal/task.Queue_rparen_.Pop (type $5)
    (result i32)
    (local $0 i32)
    i32.const 66728
    i32.load
    local.tee $0
    if $if
      i32.const 66728
      local.get $0
      i32.load
      i32.store
      i32.const 66732
      i32.load
      local.get $0
      i32.eq
      if $if_0
        i32.const 66732
        i32.const 0
        i32.store
      end ;; $if_0
      local.get $0
      i32.const 0
      i32.store
    end ;; $if
    local.get $0
    )
  
  (func $_lparen_*internal/task.Queue_rparen_.Push (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if
      global.get $18
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
      global.get $18
      select
      i32.eqz
      if $if_3
        call $runtime.nilPanic
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      global.get $18
      i32.eqz
      if $if_4
        unreachable
      end ;; $if_4
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
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
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $18
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $1
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $18
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $18
      i32.eqz
      if $if_4
        i32.const 66592
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
      global.get $18
      select
      if $if_5
        local.get $3
        call $_lparen_*internal/task.gcData_rparen_.swap
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_5
      global.get $18
      i32.eqz
      if $if_6
        i32.const 66592
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
        i32.const 66592
        local.get $2
        i32.store
      end ;; $if_6
      local.get $1
      i32.const 2
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_8
        local.get $3
        call $_lparen_*internal/task.gcData_rparen_.swap
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_8
      global.get $18
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
      global.get $18
      select
      if $if_11
        i32.const 65936
        i32.const 14
        call $runtime.runtimePanic
        i32.const 3
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_11
      global.get $18
      i32.eqz
      if $if_12
        unreachable
      end ;; $if_12
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.runtimePanic (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      local.get $2
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_1
        i32.const 66046
        i32.const 22
        call $runtime.printstring
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      local.get $2
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_2
        local.get $0
        local.get $1
        call $runtime.printstring
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $2
      i32.const 2
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_3
        call $runtime.printnl
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      global.get $18
      i32.eqz
      if $if_4
        unreachable
      end ;; $if_4
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $internal/task.start (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 32
        i32.sub
        local.tee $3
        global.set $17
        local.get $3
        i32.const 28
        i32.add
        local.tee $7
        i32.const 0
        i32.store
        local.get $3
        i32.const 20
        i32.add
        local.tee $8
        i64.const 0
        i64.store align=4
        local.get $3
        i64.const 4
        i64.store offset=12 align=4
        i32.const 66740
        i32.load
        local.set $5
        i32.const 66740
        local.get $3
        i32.const 8
        i32.add
        local.tee $4
        i32.store
        local.get $3
        local.get $5
        i32.store offset=8
      end ;; $if_1
      local.get $6
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        i32.const 40
        call $runtime.alloc
        local.set $2
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $4
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        local.get $4
        local.get $1
        i32.store offset=24
        local.get $4
        local.get $0
        i32.store offset=20
        local.get $3
        i32.const 16
        i32.add
        local.tee $0
        local.get $4
        i32.store
        local.get $3
        i32.const 24
        i32.add
        local.set $1
      end ;; $if_3
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_4
        i32.const 16384
        call $runtime.alloc
        local.set $2
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $0
      end ;; $if_4
      global.get $18
      i32.eqz
      if $if_5
        local.get $1
        local.get $0
        i32.store
        local.get $7
        local.get $0
        i32.store
        local.get $8
        local.get $0
        i32.store
        i32.const 66740
        local.get $5
        i32.store
        local.get $4
        local.get $0
        i32.store offset=28
        local.get $0
        i32.const -1204030091
        i32.store
        local.get $4
        local.get $0
        i32.const 16384
        i32.add
        i32.store offset=32
      end ;; $if_5
      local.get $6
      i32.const 2
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_6
        i32.const 66728
        local.get $4
        call $_lparen_*internal/task.Queue_rparen_.Push
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_6
      global.get $18
      i32.eqz
      if $if_7
        local.get $3
        i32.const 32
        i32.add
        global.set $17
      end ;; $if_7
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 28
    i32.add
    i32.store
    )
  
  (func $runtime.alloc (type $3)
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
    (local $10 i64)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 32
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $3
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
      i32.load offset=24
      local.set $7
      local.get $1
      i32.load offset=28
      local.set $9
      local.get $1
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $8
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 48
        i32.sub
        local.tee $4
        global.set $17
        local.get $4
        i32.const 36
        i32.add
        local.tee $3
        i64.const 0
        i64.store align=4
        local.get $4
        i32.const 28
        i32.add
        local.tee $6
        i64.const 0
        i64.store align=4
        local.get $4
        i32.const 24
        i32.add
        i32.const 66844
        i32.load
        local.tee $5
        i32.store
        local.get $4
        i32.const 0
        i32.store offset=44
        local.get $4
        i32.const 6
        i32.store offset=20
        i32.const 66740
        i32.load
        local.set $7
        i32.const 66740
        local.get $4
        i32.const 16
        i32.add
        i32.store
        local.get $4
        local.get $7
        i32.store offset=16
        local.get $4
        i32.const 32
        i32.add
        local.set $9
        local.get $0
        i32.const 8
        i32.add
        local.set $2
      end ;; $if_1
      local.get $8
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        local.get $2
        call $github.com/moontrade/nogc.AllocZeroed
        local.set $1
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $2
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        local.get $9
        local.get $2
        i32.store
        local.get $3
        local.get $2
        i32.store
        local.get $6
        local.get $2
        i32.store
        local.get $2
        i32.eqz
        local.set $6
        i32.const 0
        local.set $3
      end ;; $if_3
      block $block_0
        block $block_1
          global.get $18
          i32.eqz
          if $if_4
            local.get $6
            br_if $block_1
            local.get $2
            i32.const 0
            i32.store
            local.get $2
            local.get $0
            i32.store offset=4
            local.get $5
            i32.eqz
            br_if $block_0
            local.get $5
            i32.const 368
            i32.add
            local.tee $3
            i32.load
            local.get $0
            i32.add
            local.set $6
            local.get $3
            local.get $6
            i32.store
            local.get $5
            i32.const 112
            i32.add
            local.tee $3
            i64.load
            local.get $0
            i64.extend_i32_u
            i64.add
            local.set $10
            local.get $3
            local.get $10
            i64.store
            local.get $5
            i32.const 96
            i32.add
            local.tee $3
            i64.load
            i64.const 1
            i64.add
            local.set $10
            local.get $3
            local.get $10
            i64.store
            local.get $5
            i32.const 104
            i32.add
            local.tee $3
            i64.load
            i64.const 1
            i64.add
            local.set $10
            local.get $3
            local.get $10
            i64.store
            local.get $4
            i32.const 8
            i32.add
            local.set $0
          end ;; $if_4
          local.get $8
          i32.const 1
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_5
            local.get $0
            local.get $5
            local.get $2
            i32.const 0
            call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Add
            i32.const 1
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          global.get $18
          i32.eqz
          if $if_6
            local.get $5
            i32.load offset=28
            local.get $2
            i32.gt_u
            if $if_7
              local.get $5
              local.get $2
              i32.store offset=28
            end ;; $if_7
            local.get $5
            i32.load offset=32
            local.get $2
            i32.lt_u
            if $if_8
              local.get $5
              local.get $2
              i32.store offset=32
            end ;; $if_8
            local.get $2
            i32.const 8
            i32.add
            local.set $3
          end ;; $if_6
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_9
          i32.const 66740
          local.get $7
          i32.store
          local.get $4
          i32.const 40
          i32.add
          local.get $3
          i32.store
          local.get $4
          i32.const 44
          i32.add
          local.get $3
          i32.store
          local.get $4
          i32.const 48
          i32.add
          global.set $17
          local.get $3
          return
        end ;; $if_9
      end ;; $block_0
      local.get $8
      i32.const 2
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_10
        call $runtime.nilPanic
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_10
      global.get $18
      i32.eqz
      if $if_11
        unreachable
      end ;; $if_11
      unreachable
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $9
    i32.store offset=28
    global.get $19
    global.get $19
    i32.load
    i32.const 32
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $internal/task.Current (type $5)
    (result i32)
    i32.const 66592
    i32.load
    )
  
  (func $internal/task.Pause (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $19
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        i32.const 66592
        i32.load
        local.tee $0
        i32.eqz
        local.set $2
      end ;; $if_1
      block $block_0
        block $block_1
          block $block_2
            global.get $18
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
              i32.const 66592
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
            global.get $18
            select
            i32.eqz
            if $if_3
              local.get $0
              call $tinygo_unwind
              i32.const 0
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_3
            global.get $18
            i32.eqz
            if $if_4
              i32.const 66592
              i32.load
              local.tee $0
              br_if $block_0
            end ;; $if_4
          end ;; $block_2
          local.get $1
          i32.const 1
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_5
            call $runtime.nilPanic
            i32.const 1
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_5
          global.get $18
          i32.eqz
          if $if_6
            unreachable
          end ;; $if_6
        end ;; $block_1
        local.get $1
        i32.const 2
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_7
          i32.const 65936
          i32.const 14
          call $runtime.runtimePanic
          i32.const 2
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        global.get $18
        i32.eqz
        if $if_8
          unreachable
        end ;; $if_8
      end ;; $block_0
      global.get $18
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
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc.AllocZeroed (type $3)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 16
        i32.sub
        local.tee $3
        global.set $17
        local.get $3
        i32.const 8
        i32.add
        i32.const 66840
        i32.load
        local.tee $2
        i32.store
        local.get $3
        i32.const 1
        i32.store offset=4
        local.get $3
        i32.const 66740
        i32.load
        i32.store
      end ;; $if_1
      local.get $1
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        local.get $2
        local.get $0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.AllocZeroed
        local.set $1
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        local.get $3
        i32.const 16
        i32.add
        global.set $17
        local.get $0
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0
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
    (local $17 i32)
    (local $18 i32)
    (local $19 i32)
    (local $20 i32)
    (local $21 i32)
    (local $22 f32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 80
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $6
      i32.load
      local.set $0
      local.get $6
      i32.load offset=8
      local.set $2
      local.get $6
      i32.load offset=12
      local.set $3
      local.get $6
      i32.load offset=16
      local.set $4
      local.get $6
      i32.load offset=20
      local.set $5
      local.get $6
      i32.load offset=24
      local.set $7
      local.get $6
      i32.load offset=28
      local.set $8
      local.get $6
      i32.load offset=32
      local.set $9
      local.get $6
      i32.load offset=36
      local.set $11
      local.get $6
      i32.load offset=40
      local.set $12
      local.get $6
      i32.load offset=44
      local.set $13
      local.get $6
      i32.load offset=48
      local.set $14
      local.get $6
      i32.load offset=52
      local.set $15
      local.get $6
      i32.load offset=56
      local.set $16
      local.get $6
      i32.load offset=60
      local.set $17
      local.get $6
      i32.load offset=64
      local.set $18
      local.get $6
      i32.load offset=68
      local.set $19
      local.get $6
      i32.load offset=72
      local.set $20
      local.get $6
      i32.load offset=76
      local.set $21
      local.get $6
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $10
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 112
        i32.sub
        local.tee $4
        global.set $17
        local.get $4
        i32.const 0
        i32.store offset=100
        local.get $4
        i64.const 0
        i64.store offset=92 align=4
        local.get $4
        i64.const 0
        i64.store offset=84 align=4
        local.get $4
        i64.const 0
        i64.store offset=76 align=4
        local.get $4
        i64.const 0
        i64.store offset=68 align=4
        local.get $4
        i64.const 12
        i64.store offset=60 align=4
        local.get $4
        i32.const 108
        i32.add
        local.get $4
        i32.const 16
        i32.add
        i32.store
        local.get $4
        i32.const 104
        i32.add
        local.tee $9
        local.get $4
        i32.const 24
        i32.add
        i32.store
        i32.const 66740
        i32.load
        local.set $11
        i32.const 66740
        local.get $4
        i32.const 56
        i32.add
        i32.store
        local.get $4
        local.get $11
        i32.store offset=56
        local.get $1
        i32.eqz
        local.set $7
      end ;; $if_1
      block $block_0 (result i32)
        block $block_1
          block $block_2
            block $block_3
              block $block_4
                global.get $18
                i32.eqz
                if $if_2
                  local.get $7
                  br_if $block_4
                  local.get $3
                  i32.const 6
                  local.get $3
                  i32.const 6
                  i32.gt_s
                  select
                  local.set $13
                  local.get $4
                  i32.const 88
                  i32.add
                  local.set $14
                  local.get $4
                  i32.const 92
                  i32.add
                  local.set $15
                  local.get $4
                  i32.const 84
                  i32.add
                  local.set $16
                  local.get $4
                  i32.const 80
                  i32.add
                  local.set $17
                  local.get $4
                  i32.const 68
                  i32.add
                  local.set $18
                  local.get $4
                  i32.const 56
                  i32.add
                  local.tee $7
                  i32.const 8
                  i32.add
                  local.set $19
                  local.get $4
                  i32.const 40
                  i32.add
                  local.set $12
                  local.get $4
                  i32.const 96
                  i32.add
                  local.set $20
                  local.get $4
                  i32.const 100
                  i32.add
                  local.set $21
                  local.get $1
                  i32.load
                  local.set $5
                end ;; $if_2
                loop $loop
                  global.get $18
                  i32.eqz
                  if $if_3
                    local.get $1
                    i32.load offset=8
                    local.set $8
                  end ;; $if_3
                  global.get $18
                  i32.const 1
                  local.get $8
                  select
                  if $if_4
                    local.get $10
                    i32.const 0
                    global.get $18
                    select
                    i32.eqz
                    if $if_5
                      call $runtime.divideByZeroPanic
                      i32.const 0
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_5
                    global.get $18
                    i32.eqz
                    if $if_6
                      unreachable
                    end ;; $if_6
                  end ;; $if_4
                  global.get $18
                  i32.eqz
                  if $if_7
                    i32.const 0
                    local.set $7
                    local.get $4
                    i64.const 0
                    i64.store offset=16
                    local.get $2
                    i32.const 0
                    call $github.com/moontrade/nogc/hash.FNV32a
                    local.get $8
                    i32.rem_u
                    i32.const 3
                    i32.shl
                    local.get $5
                    i32.add
                    local.tee $9
                    local.set $5
                    loop $loop_0
                      local.get $14
                      local.get $5
                      i32.store
                      local.get $15
                      local.get $5
                      i32.store
                      local.get $16
                      local.get $5
                      i32.store
                      local.get $17
                      local.get $5
                      i32.store
                      local.get $18
                      local.get $5
                      i32.store
                      local.get $19
                      local.get $5
                      i32.store
                      local.get $5
                      i32.eqz
                      br_if $block_4
                      local.get $5
                      i32.load
                      local.tee $8
                      i32.eqz
                      br_if $block_1
                      local.get $2
                      local.get $8
                      i32.eq
                      br_if $block_2
                      block $block_5
                        local.get $7
                        local.get $5
                        i32.load offset=4
                        i32.gt_s
                        if $if_8
                          local.get $5
                          i32.load offset=4
                          local.set $8
                          local.get $5
                          local.get $7
                          i32.store offset=4
                          local.get $5
                          i32.load
                          local.set $7
                          local.get $5
                          local.get $2
                          i32.store
                          local.get $7
                          local.set $2
                          br $block_5
                        end ;; $if_8
                        local.get $7
                        local.set $8
                      end ;; $block_5
                      local.get $8
                      i32.const 1
                      i32.add
                      local.set $7
                      local.get $5
                      i32.const 8
                      i32.add
                      local.tee $5
                      local.get $1
                      i32.load offset=4
                      i32.ge_u
                      if $if_9
                        local.get $1
                        i32.load
                        local.set $5
                      end ;; $if_9
                      local.get $5
                      local.get $9
                      i32.ne
                      local.get $7
                      local.get $1
                      i32.load offset=16
                      i32.le_s
                      i32.and
                      br_if $loop_0
                    end ;; $loop_0
                    local.get $4
                    local.get $7
                    i32.store offset=20
                    local.get $4
                    local.get $2
                    i32.store offset=16
                    local.get $3
                    local.get $13
                    i32.eq
                    local.tee $7
                    br_if $block_3
                    i32.const -1
                    i32.const 0
                    local.get $1
                    f32.load offset=24
                    local.tee $22
                    f32.const 0x1.000000p-0
                    f32.le
                    if $if_10 (result f32)
                      local.get $1
                      i32.const 1073741824
                      i32.store offset=24
                      f32.const 0x1.000000p+1
                    else
                      local.get $22
                    end ;; $if_10
                    local.get $1
                    i32.load offset=8
                    f32.convert_i32_u
                    f32.mul
                    local.tee $22
                    f32.const 0x0.000000p-127
                    f32.ge
                    local.tee $7
                    select
                    local.set $5
                    local.get $22
                    f32.const 0x1.fffffcp+31
                    f32.le
                    local.set $8
                    block $block_6 (result i32)
                      local.get $22
                      f32.const 0x1.000000p+32
                      f32.lt
                      local.get $22
                      f32.const 0x0.000000p-127
                      f32.ge
                      i32.and
                      if $if_11
                        local.get $22
                        i32.trunc_f32_u
                        br $block_6
                      end ;; $if_11
                      i32.const 0
                    end ;; $block_6
                    local.get $5
                    local.get $8
                    select
                    local.tee $9
                    local.get $5
                    local.get $7
                    select
                    local.tee $7
                    i32.const 3
                    i32.shl
                    local.set $8
                  end ;; $if_7
                  local.get $10
                  i32.const 1
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_12
                    local.get $8
                    call $github.com/moontrade/nogc.AllocZeroed
                    local.set $6
                    i32.const 1
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                    local.get $6
                    local.set $5
                  end ;; $if_12
                  global.get $18
                  i32.eqz
                  if $if_13
                    local.get $4
                    i32.const 32
                    i32.add
                    local.tee $9
                    i64.const 0
                    i64.store
                    local.get $12
                    i64.const 0
                    i64.store
                    local.get $9
                    local.get $7
                    i32.store
                    local.get $4
                    i32.const 48
                    i32.add
                    local.get $1
                    f32.load offset=24
                    f32.store
                    local.get $12
                    local.get $1
                    i32.load offset=16
                    i32.store
                    local.get $4
                    i64.const 0
                    i64.store offset=24
                    local.get $4
                    local.get $5
                    i32.store offset=24
                    local.get $4
                    i32.const 0
                    i32.store offset=36
                    local.get $4
                    local.get $5
                    local.get $8
                    i32.add
                    local.tee $7
                    i32.store offset=28
                    local.get $1
                    i32.load
                    local.set $5
                  end ;; $if_13
                  loop $loop_1
                    block $block_7
                      global.get $18
                      i32.eqz
                      if $if_14
                        local.get $5
                        local.get $1
                        i32.load offset=4
                        i32.ge_u
                        local.tee $7
                        br_if $block_7
                        local.get $20
                        local.get $5
                        i32.store
                        local.get $21
                        local.get $5
                        i32.store
                        local.get $4
                        i32.const 8
                        i32.add
                        local.set $8
                        local.get $4
                        i32.const 24
                        i32.add
                        local.set $9
                        local.get $5
                        i32.load
                        local.set $7
                      end ;; $if_14
                      local.get $10
                      i32.const 2
                      i32.eq
                      i32.const 1
                      global.get $18
                      select
                      if $if_15
                        local.get $8
                        local.get $9
                        local.get $7
                        i32.const 0
                        call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Add
                        i32.const 2
                        global.get $18
                        i32.const 1
                        i32.eq
                        br_if $block
                        drop
                      end ;; $if_15
                      global.get $18
                      i32.eqz
                      if $if_16
                        local.get $5
                        i32.const 8
                        i32.add
                        local.set $5
                        local.get $4
                        i32.load8_u offset=9
                        i32.eqz
                        local.tee $7
                        br_if $block_3
                        br $loop_1
                      end ;; $if_16
                    end ;; $block_7
                  end ;; $loop_1
                  global.get $18
                  i32.eqz
                  if $if_17
                    local.get $1
                    i32.load
                    local.set $7
                  end ;; $if_17
                  local.get $10
                  i32.const 3
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_18
                    local.get $7
                    call $free
                    i32.const 3
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_18
                  global.get $18
                  i32.eqz
                  if $if_19
                    local.get $1
                    local.get $4
                    f32.load offset=48
                    f32.store offset=24
                    local.get $1
                    local.get $4
                    i32.load offset=44
                    local.tee $7
                    i32.store offset=20
                    local.get $1
                    local.get $4
                    i64.load offset=36 align=4
                    i64.store offset=12 align=4
                    local.get $1
                    local.get $4
                    i64.load offset=28 align=4
                    i64.store offset=4 align=4
                    local.get $1
                    local.get $4
                    i32.load offset=24
                    local.tee $5
                    i32.store
                    local.get $3
                    i32.const 1
                    i32.add
                    local.set $3
                    br $loop
                  end ;; $if_19
                end ;; $loop
              end ;; $block_4
              local.get $10
              i32.const 4
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_20
                call $runtime.nilPanic
                i32.const 4
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_20
              global.get $18
              i32.eqz
              if $if_21
                unreachable
              end ;; $if_21
            end ;; $block_3
            global.get $18
            i32.eqz
            if $if_22
              i32.const 0
              local.set $5
              i32.const 0
              br $block_0
            end ;; $if_22
          end ;; $block_2
          global.get $18
          i32.eqz
          if $if_23
            local.get $4
            local.get $7
            i32.store offset=20
            local.get $5
            local.get $7
            i32.store offset=4
            local.get $4
            local.get $2
            i32.store offset=16
            i32.const 0
            local.set $5
            i32.const 1
            br $block_0
          end ;; $if_23
        end ;; $block_1
        global.get $18
        if $if_24 (result i32)
          local.get $7
        else
          local.get $4
          i32.const 72
          i32.add
          local.get $5
          i32.store
          local.get $4
          i32.const 76
          i32.add
          local.get $5
          i32.store
          local.get $4
          local.get $7
          i32.store offset=20
          local.get $5
          local.get $7
          i32.store offset=4
          local.get $4
          local.get $2
          i32.store offset=16
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
        end ;; $if_24
      end ;; $block_0
      local.set $7
      global.get $18
      i32.eqz
      if $if_25
        i32.const 66740
        local.get $11
        i32.store
        local.get $0
        local.get $5
        i32.const 1
        i32.and
        i32.store8
        local.get $0
        local.get $7
        i32.const 1
        i32.and
        i32.store8 offset=1
        local.get $4
        i32.const 112
        i32.add
        global.set $17
      end ;; $if_25
      return
    end ;; $block
    local.set $6
    global.get $19
    i32.load
    local.get $6
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $3
    i32.store offset=12
    local.get $6
    local.get $4
    i32.store offset=16
    local.get $6
    local.get $5
    i32.store offset=20
    local.get $6
    local.get $7
    i32.store offset=24
    local.get $6
    local.get $8
    i32.store offset=28
    local.get $6
    local.get $9
    i32.store offset=32
    local.get $6
    local.get $11
    i32.store offset=36
    local.get $6
    local.get $12
    i32.store offset=40
    local.get $6
    local.get $13
    i32.store offset=44
    local.get $6
    local.get $14
    i32.store offset=48
    local.get $6
    local.get $15
    i32.store offset=52
    local.get $6
    local.get $16
    i32.store offset=56
    local.get $6
    local.get $17
    i32.store offset=60
    local.get $6
    local.get $18
    i32.store offset=64
    local.get $6
    local.get $19
    i32.store offset=68
    local.get $6
    local.get $20
    i32.store offset=72
    local.get $6
    local.get $21
    i32.store offset=76
    global.get $19
    global.get $19
    i32.load
    i32.const 80
    i32.add
    i32.store
    )
  
  (func $runtime.printstring (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        local.get $1
        i32.const 0
        local.get $1
        i32.const 0
        i32.gt_s
        local.tee $2
        select
        local.set $1
      end ;; $if_1
      loop $loop
        block $block_0
          global.get $18
          i32.eqz
          if $if_2
            local.get $1
            i32.eqz
            br_if $block_0
            local.get $0
            i32.load8_u
            local.set $2
          end ;; $if_2
          local.get $3
          i32.const 0
          global.get $18
          select
          i32.eqz
          if $if_3
            local.get $2
            call $runtime.putchar
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          global.get $18
          i32.eqz
          if $if_4
            local.get $0
            i32.const 1
            i32.add
            local.set $0
            local.get $1
            i32.const 1
            i32.sub
            local.set $1
            br $loop
          end ;; $if_4
        end ;; $block_0
      end ;; $loop
      return
    end ;; $block
    local.set $3
    global.get $19
    i32.load
    local.get $3
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.printnl (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_0
        i32.const 10
        call $runtime.putchar
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.putchar (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        i32.const 66600
        i32.load
        local.tee $3
        i32.const 119
        i32.le_u
        local.set $1
      end ;; $if_1
      global.get $18
      i32.const 1
      local.get $1
      select
      if $if_2
        local.get $2
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_3
          call $runtime.lookupPanic
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $18
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_5
        i32.const 66600
        local.get $3
        i32.const 1
        i32.add
        local.tee $1
        i32.store
        local.get $3
        i32.const 66604
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
        global.get $18
        i32.eqz
        if $if_6
          local.get $0
          i32.eqz
          local.get $3
          i32.const 119
          i32.ne
          i32.and
          br_if $block_0
          i32.const 66584
          local.get $1
          i32.store
        end ;; $if_6
        local.get $2
        i32.const 1
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_7
          i32.const 1
          i32.const 66580
          i32.const 1
          i32.const 66744
          call $runtime.fd_write
          drop
          i32.const 1
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        global.get $18
        i32.eqz
        if $if_8
          i32.const 66600
          i32.const 0
          i32.store
        end ;; $if_8
      end ;; $block_0
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.lookupPanic (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_0
        i32.const 66091
        i32.const 18
        call $runtime.runtimePanic
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.printspace (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_0
        i32.const 32
        call $runtime.putchar
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
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
    (local $17 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 28
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $2
      local.get $1
      i32.load offset=8
      local.set $7
      local.get $1
      i32.load offset=12
      local.set $8
      local.get $1
      i32.load offset=16
      local.set $9
      local.get $1
      i32.load offset=20
      local.set $10
      local.get $1
      i32.load offset=24
      local.set $11
      local.get $1
      i32.load offset=4
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $12
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 32
        i32.sub
        local.tee $3
        global.set $17
        local.get $0
        i32.eqz
        local.set $4
      end ;; $if_1
      block $block_0
        global.get $18
        i32.eqz
        if $if_2
          local.get $4
          br_if $block_0
          local.get $0
          i32.load offset=12
          i32.eqz
          local.set $4
        end ;; $if_2
        block $block_1
          global.get $18
          i32.eqz
          if $if_3
            local.get $4
            br_if $block_1
            local.get $3
            i32.const 24
            i32.add
            i64.const 0
            i64.store
            local.get $3
            i32.const 16
            i32.add
            i64.const 0
            i64.store
            local.get $3
            i64.const 0
            i64.store offset=8
            i32.const 0
            local.set $8
            i32.const -1
            local.set $6
            local.get $0
            i32.const 16
            i32.add
            i32.load
            local.tee $1
            i32.const 0
            i32.gt_s
            local.set $4
            local.get $1
            i32.const 0
            local.get $4
            select
            i32.const 1
            i32.sub
            local.set $13
            local.get $1
            i32.const 1
            i32.sub
            local.set $14
            local.get $0
            i32.load offset=12
            local.set $15
            i32.const 0
            local.set $9
            i32.const 0
            local.set $10
            i32.const 0
            local.set $7
            i32.const 0
            local.set $11
            i32.const 0
            local.set $2
          end ;; $if_3
          block $block_2
            global.get $18
            i32.eqz
            if $if_4
              loop $loop
                local.get $6
                local.get $13
                i32.eq
                br_if $block_2
                block $block_3
                  local.get $6
                  local.get $14
                  i32.eq
                  br_if $block_3
                  local.get $6
                  i32.const 1
                  i32.add
                  local.tee $6
                  local.get $0
                  i32.load offset=16
                  i32.ge_u
                  br_if $block_3
                  local.get $15
                  local.get $6
                  i32.const 24
                  i32.mul
                  local.tee $5
                  i32.add
                  local.tee $1
                  i32.load offset=12
                  local.set $10
                  local.get $1
                  i32.load offset=8
                  local.set $2
                  local.get $1
                  i32.load offset=4
                  local.set $7
                  local.get $1
                  i32.load
                  local.set $11
                  local.get $1
                  i32.const 20
                  i32.add
                  i32.load
                  local.set $8
                  local.get $1
                  i32.const 16
                  i32.add
                  i32.load
                  local.set $9
                  local.get $5
                  local.get $0
                  i32.load offset=12
                  i32.add
                  local.get $0
                  i32.eq
                  br_if $loop
                  local.get $7
                  i32.eqz
                  br_if $loop
                  local.get $2
                  i32.eqz
                  br_if $block_0
                  local.get $2
                  i32.load
                  local.tee $16
                  i32.eqz
                  br_if $block_0
                  local.get $2
                  i32.load
                  local.tee $1
                  i32.eqz
                  br_if $block_0
                  local.get $6
                  local.get $0
                  i32.load offset=16
                  i32.ge_u
                  br_if $block_3
                  local.get $1
                  i32.load offset=12
                  local.tee $4
                  local.set $1
                  block $block_4
                    local.get $4
                    local.get $0
                    i32.load offset=12
                    local.tee $17
                    local.get $5
                    i32.add
                    local.tee $5
                    i32.eq
                    if $if_5
                      local.get $4
                      i32.eqz
                      br_if $block_0
                      local.get $4
                      i32.load
                      local.set $4
                      br $block_4
                    end ;; $if_5
                    loop $loop_0
                      local.get $1
                      i32.eqz
                      br_if $block_4
                      local.get $5
                      local.get $1
                      i32.load
                      i32.ne
                      if $if_6
                        local.get $1
                        i32.load
                        local.set $1
                        br $loop_0
                      end ;; $if_6
                    end ;; $loop_0
                    local.get $17
                    i32.eqz
                    br_if $block_0
                    local.get $1
                    local.get $5
                    i32.load
                    i32.store
                  end ;; $block_4
                  local.get $16
                  local.get $4
                  i32.store offset=12
                  local.get $2
                  i32.load
                  local.tee $1
                  i32.eqz
                  br_if $block_0
                  local.get $1
                  i32.load offset=12
                  br_if $loop
                  local.get $2
                  i32.load
                  local.set $1
                  block $block_5
                    block $block_6
                      block $block_7
                        local.get $2
                        i32.load offset=4
                        i32.eqz
                        if $if_7
                          local.get $1
                          i32.eqz
                          br_if $block_0
                          local.get $1
                          i32.load8_u offset=8
                          i32.const 4
                          i32.eq
                          br_if $loop
                          local.get $2
                          i32.load
                          local.set $5
                          br $block_7
                        end ;; $if_7
                        local.get $1
                        i32.eqz
                        br_if $block_0
                        local.get $2
                        i32.load
                        local.set $5
                        local.get $1
                        i32.load offset=24
                        br_if $block_6
                      end ;; $block_7
                      i32.const 0
                      local.set $1
                      local.get $5
                      i32.eqz
                      br_if $block_0
                      br $block_5
                    end ;; $block_6
                    i32.const 3
                    local.set $1
                    local.get $5
                    i32.eqz
                    br_if $block_0
                  end ;; $block_5
                  local.get $5
                  local.get $1
                  i32.store8 offset=8
                  br $loop
                end ;; $block_3
              end ;; $loop
            end ;; $if_4
            local.get $12
            i32.const 0
            global.get $18
            select
            i32.eqz
            if $if_8
              call $runtime.lookupPanic
              i32.const 0
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_8
            global.get $18
            i32.eqz
            if $if_9
              unreachable
            end ;; $if_9
          end ;; $block_2
          global.get $18
          i32.eqz
          if $if_10
            local.get $3
            local.get $8
            i32.store offset=28
            local.get $3
            local.get $9
            i32.store offset=24
            local.get $3
            local.get $10
            i32.store offset=20
            local.get $3
            local.get $2
            i32.store offset=16
            local.get $3
            local.get $7
            i32.store offset=12
            local.get $3
            local.get $11
            i32.store offset=8
          end ;; $if_10
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_11
          local.get $3
          i32.const 32
          i32.add
          global.set $17
          return
        end ;; $if_11
      end ;; $block_0
      local.get $12
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_12
        call $runtime.nilPanic
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_12
      global.get $18
      i32.eqz
      if $if_13
        unreachable
      end ;; $if_13
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $0
    local.get $2
    i32.store
    local.get $0
    local.get $3
    i32.store offset=4
    local.get $0
    local.get $7
    i32.store offset=8
    local.get $0
    local.get $8
    i32.store offset=12
    local.get $0
    local.get $9
    i32.store offset=16
    local.get $0
    local.get $10
    i32.store offset=20
    local.get $0
    local.get $11
    i32.store offset=24
    global.get $19
    global.get $19
    i32.load
    i32.const 28
    i32.add
    i32.store
    )
  
  (func $_lparen_*runtime.channel_rparen_.pop (type $4)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    (local $3 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if
      global.get $18
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
      global.get $18
      select
      i32.eqz
      if $if_2
        call $runtime.nilPanic
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        unreachable
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*runtime.channel_rparen_.resumeTX (type $3)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      local.get $1
      local.get $0
      i32.eqz
      global.get $18
      select
      local.set $1
      block $block_0
        global.get $18
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
          global.get $18
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
          global.get $18
          select
          i32.eqz
          if $if_4
            local.get $1
            call $_lparen_*runtime.channelBlockedList_rparen_.detach
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_4
        end ;; $block_1
        global.get $18
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
        global.get $18
        select
        if $if_6
          i32.const 66728
          local.get $1
          call $_lparen_*internal/task.Queue_rparen_.Push
          i32.const 1
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_6
        global.get $18
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
      global.get $18
      select
      if $if_8
        call $runtime.nilPanic
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_8
      global.get $18
      i32.eqz
      if $if_9
        unreachable
      end ;; $if_9
      unreachable
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime.deadlock (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $0
      end ;; $if
      local.get $0
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_0
        call $internal/task.Pause
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      local.get $0
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_1
        i32.const 66136
        call $runtime._panic
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      global.get $18
      i32.eqz
      if $if_2
        unreachable
      end ;; $if_2
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.printitf (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $18
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
      global.get $18
      select
      i32.eqz
      if $if_2
        local.get $1
        local.get $0
        call $runtime.printstring
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.printint64 (type $7)
    (param $0 i64)
    (local $1 i32)
    (local $2 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      i64.load align=4
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $18
      i32.eqz
      local.get $2
      local.get $0
      i64.const 0
      i64.ge_s
      global.get $18
      select
      i32.and
      i32.eqz
      if $if_1
        local.get $1
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_2
          i32.const 45
          call $runtime.putchar
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        local.get $0
        i64.const 0
        local.get $0
        i64.sub
        global.get $18
        select
        local.set $0
      end ;; $if_1
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_3
        local.get $0
        call $runtime.printuint64
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $0
    i64.store align=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.printuint64 (type $7)
    (param $0 i64)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i64.load align=4
      local.set $0
      local.get $1
      i32.load offset=8
      local.set $2
      local.get $1
      i32.load offset=12
      local.set $3
      local.get $1
      i32.load offset=16
      local.set $4
      local.get $1
      i32.load offset=20
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $5
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 32
        i32.sub
        local.tee $1
        global.set $17
        local.get $1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get $1
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get $1
        i64.const 0
        i64.store offset=8
        i32.const 19
        local.set $3
        i32.const 19
        local.set $2
      end ;; $if_1
      loop $loop
        local.get $4
        local.get $3
        i32.const 0
        i32.ge_s
        global.get $18
        select
        local.set $4
        block $block_0
          global.get $18
          i32.eqz
          if $if_2
            local.get $4
            br_if $block_0
            local.get $2
            i32.const 20
            local.get $2
            i32.const 20
            i32.gt_s
            select
            local.get $2
            i32.sub
            local.set $3
            local.get $1
            i32.const 8
            i32.add
            local.tee $4
            local.get $2
            i32.add
            local.set $2
          end ;; $if_2
          loop $loop_0
            block $block_1
              global.get $18
              i32.eqz
              if $if_3
                local.get $3
                i32.eqz
                br_if $block_1
                local.get $2
                i32.load8_u
                local.set $4
              end ;; $if_3
              local.get $5
              i32.const 0
              global.get $18
              select
              i32.eqz
              if $if_4
                local.get $4
                call $runtime.putchar
                i32.const 0
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_4
              global.get $18
              i32.eqz
              if $if_5
                local.get $2
                i32.const 1
                i32.add
                local.set $2
                local.get $3
                i32.const 1
                i32.sub
                local.set $3
                br $loop_0
              end ;; $if_5
            end ;; $block_1
          end ;; $loop_0
          global.get $18
          i32.eqz
          if $if_6
            local.get $1
            i32.const 32
            i32.add
            global.set $17
            return
          end ;; $if_6
        end ;; $block_0
        global.get $18
        i32.eqz
        if $if_7
          local.get $3
          local.get $1
          i32.const 8
          i32.add
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
          local.get $3
          local.get $4
          i32.const 255
          i32.and
          i32.const 48
          i32.eq
          local.tee $4
          select
          local.set $2
          local.get $3
          i32.const 1
          i32.sub
          local.set $3
          br $loop
        end ;; $if_7
      end ;; $loop
      return
    end ;; $block
    local.set $5
    global.get $19
    i32.load
    local.get $5
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $5
    local.get $0
    i64.store align=4
    local.get $5
    local.get $2
    i32.store offset=8
    local.get $5
    local.get $3
    i32.store offset=12
    local.get $5
    local.get $4
    i32.store offset=16
    local.get $5
    local.get $1
    i32.store offset=20
    global.get $19
    global.get $19
    i32.load
    i32.const 24
    i32.add
    i32.store
    )
  
  (func $runtime.printuint32 (type $0)
    (param $0 i32)
    (local $1 i64)
    (local $2 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if (result i64)
        global.get $19
        global.get $19
        i32.load
        i32.const 8
        i32.sub
        i32.store
        global.get $19
        i32.load
        i64.load align=4
      else
        local.get $1
      end ;; $if
      local.get $0
      i64.extend_i32_u
      global.get $18
      select
      local.set $1
      global.get $18
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
      else
        local.get $2
      end ;; $if_0
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_1
        local.get $1
        call $runtime.printuint64
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $1
    i64.store align=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $runtime.divideByZeroPanic (type $1)
    (local $0 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
      else
        local.get $0
      end ;; $if
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_0
        i32.const 66109
        i32.const 14
        call $runtime.runtimePanic
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $runtime.ticks (type $13)
    (result i64)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i64)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $0
      i32.load
      local.set $1
      local.get $0
      i32.load offset=4
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 16
        i32.sub
        local.tee $1
        global.set $17
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
      global.get $18
      select
      i32.eqz
      if $if_2
        i32.const 0
        i64.const 1000
        local.get $0
        call $runtime.clock_time_get
        drop
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        local.get $1
        i64.load offset=8
        local.set $3
        local.get $1
        i32.const 16
        i32.add
        global.set $17
        local.get $3
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $2
    local.get $1
    i32.store
    local.get $2
    local.get $0
    i32.store offset=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
    i32.add
    i32.store
    i64.const 0
    )
  
  (func $_start (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $2
      local.get $1
      i32.load offset=8
      local.set $4
      local.get $1
      i32.load offset=12
      local.set $5
      local.get $1
      i32.load offset=16
      local.set $6
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 128
        i32.sub
        local.tee $2
        global.set $17
        i32.const 66568
        i32.const 66864
        i32.store
        local.get $2
        i32.const 0
        i32.store offset=124
        local.get $2
        i64.const 0
        i64.store offset=116 align=4
        local.get $2
        i64.const 4
        i64.store offset=108 align=4
        i32.const 66740
        i32.load
        local.set $6
        i32.const 66740
        local.get $2
        i32.const 104
        i32.add
        i32.store
        local.get $2
        local.get $6
        i32.store offset=104
        i32.const 66596
        memory.size
        i32.const 16
        i32.shl
        i32.store
        local.get $2
        i32.const 112
        i32.add
        local.tee $4
        i32.const 66840
        i32.load
        local.tee $0
        i32.store
      end ;; $if_1
      block $block_0
        block $block_1
          global.get $18
          i32.eqz
          if $if_2
            local.get $0
            br_if $block_1
            local.get $2
            i32.const 116
            i32.add
            i32.const 66840
            i32.load
            local.tee $0
            i32.store
            local.get $0
            br_if $block_0
            memory.size
            i32.const 16
            i32.shl
            local.tee $5
            i32.const 68555
            i32.lt_u
            if $if_3
              i32.const 1
              memory.grow
              drop
              memory.size
              i32.const 16
              i32.shl
              local.set $5
            end ;; $if_3
            local.get $2
            i32.const 120
            i32.add
            local.get $2
            i32.const 8
            i32.add
            i32.store
            local.get $2
            i32.const 32
            i32.add
            i32.const 0
            i32.store8
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
            local.get $2
            i32.const 40
            i32.add
            i32.const 0
            i32.const 60
            call $memset
            drop
            i32.const 66864
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
            i32.const 8
            i32.add
            local.get $5
            i32.store
            local.get $0
            i32.const 4
            i32.add
            local.get $0
            i32.store
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
            i32.const 88
            i32.add
            local.tee $4
            i32.store
            local.get $4
            i32.const 0
            i32.store
            local.get $4
            i32.const 0
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setTail
            i32.const 0
            local.set $1
            loop $loop
              local.get $1
              i32.const 23
              i32.ne
              if $if_4
                i32.const 0
                local.set $0
                local.get $4
                local.get $1
                i32.const 0
                call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setSL
                loop $loop_0
                  local.get $0
                  i32.const 16
                  i32.ne
                  if $if_5
                    local.get $4
                    local.get $1
                    local.get $0
                    i32.const 0
                    call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.root_rparen_.setHead
                    local.get $0
                    i32.const 1
                    i32.add
                    local.set $0
                    br $loop_0
                  end ;; $if_5
                end ;; $loop_0
                local.get $1
                i32.const 1
                i32.add
                local.set $1
                br $loop
              end ;; $if_4
            end ;; $loop
            i32.const 66864
            local.tee $0
            i32.const 15
            i32.add
            i32.const -16
            i32.and
            i32.const 1660
            i32.add
            local.set $4
          end ;; $if_2
          local.get $3
          i32.const 0
          global.get $18
          select
          i32.eqz
          if $if_6
            local.get $0
            local.get $4
            local.get $5
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.addMemory
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_6
          global.get $18
          i32.eqz
          if $if_7
            i32.const 66840
            local.get $0
            i32.store
            br $block_0
          end ;; $if_7
        end ;; $block_1
        local.get $3
        i32.const 1
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_8
          i32.const 66473
          i32.const 32
          call $runtime.printstring
          i32.const 1
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_8
        local.get $3
        i32.const 2
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_9
          call $runtime.printnl
          i32.const 2
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_9
      end ;; $block_0
      local.get $3
      i32.const 3
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_10
        call $github.com/moontrade/nogc.getCollector
        local.set $1
        i32.const 3
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_10
      global.get $18
      i32.eqz
      if $if_11
        i32.const 66740
        local.get $6
        i32.store
        local.get $2
        i32.const 124
        i32.add
        local.get $0
        i32.store
      end ;; $if_11
      local.get $3
      i32.const 4
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_12
        i32.const 66728
        i32.const 1
        call $runtime.gcRegisterGlobal
        i32.const 4
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_12
      local.get $3
      i32.const 5
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_13
        i32.const 66736
        i32.const 2
        call $runtime.gcRegisterGlobal
        i32.const 5
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_13
      local.get $3
      i32.const 6
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_14
        i32.const 0
        i32.const 3
        call $runtime.gcRegisterGlobal
        i32.const 6
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_14
      local.get $3
      i32.const 7
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_15
        i32.const 66568
        i32.const 4
        call $runtime.gcRegisterGlobal
        i32.const 7
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_15
      local.get $3
      i32.const 8
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_16
        i32.const 66596
        i32.const 5
        call $runtime.gcRegisterGlobal
        i32.const 8
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_16
      local.get $3
      i32.const 9
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_17
        i32.const 66572
        i32.const 6
        call $runtime.gcRegisterGlobal
        i32.const 9
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_17
      local.get $3
      i32.const 10
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_18
        i32.const 66576
        i32.const 7
        call $runtime.gcRegisterGlobal
        i32.const 10
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_18
      local.get $3
      i32.const 11
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_19
        i32.const 2
        i32.const 0
        call $internal/task.start
        i32.const 11
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_19
      local.get $3
      i32.const 12
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_20
        call $runtime.scheduler
        i32.const 12
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_20
      global.get $18
      i32.eqz
      if $if_21
        local.get $2
        i32.const 128
        i32.add
        global.set $17
      end ;; $if_21
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $5
    i32.store offset=12
    local.get $1
    local.get $6
    i32.store offset=16
    global.get $19
    global.get $19
    i32.load
    i32.const 20
    i32.add
    i32.store
    )
  
  (func $github.com/moontrade/nogc.GrowMin (type $9)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (param $3 i32)
    (param $4 i32)
    memory.size
    local.set $1
    local.get $2
    memory.grow
    drop
    local.get $0
    i32.const 0
    memory.size
    local.tee $3
    i32.const 16
    i32.shl
    local.get $1
    local.get $3
    i32.eq
    local.tee $3
    select
    i32.const 0
    i32.const 0
    local.get $1
    i32.const 16
    i32.shl
    local.get $3
    select
    local.tee $1
    select
    i32.store offset=8
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 0
    local.get $1
    select
    i32.store
    )
  
  (func $github.com/moontrade/nogc.getCollector (type $5)
    (result i32)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=8
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $5
      local.get $3
      i32.load offset=16
      local.set $6
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 96
        i32.sub
        local.tee $0
        global.set $17
        i32.const 66844
        i32.load
        local.set $1
        local.get $0
        i32.const 8
        i32.store offset=60
        local.get $0
        i32.const -64
        i32.sub
        local.get $1
        i32.store
        local.get $0
        i32.const 0
        i32.store offset=92
        local.get $0
        i64.const 0
        i64.store offset=84 align=4
        local.get $0
        i64.const 0
        i64.store offset=76 align=4
        local.get $0
        i64.const 0
        i64.store offset=68 align=4
        i32.const 66740
        i32.load
        local.set $5
        i32.const 66740
        local.get $0
        i32.const 56
        i32.add
        local.tee $2
        i32.store
        local.get $0
        local.get $5
        i32.store offset=56
      end ;; $if_1
      block $block_0
        block $block_1
          global.get $18
          i32.eqz
          if $if_2
            local.get $1
            br_if $block_1
            local.get $0
            i32.const 80
            i32.add
            local.set $2
          end ;; $if_2
          local.get $4
          i32.const 0
          global.get $18
          select
          i32.eqz
          if $if_3
            i32.const 372
            call $github.com/moontrade/nogc.AllocZeroed
            local.set $3
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $3
            local.set $1
          end ;; $if_3
          global.get $18
          i32.eqz
          if $if_4
            local.get $2
            local.get $1
            i32.store
            local.get $0
            i32.const 84
            i32.add
            local.get $1
            i32.store
            local.get $0
            i32.const 76
            i32.add
            local.get $1
            i32.store
            local.get $0
            i32.const 72
            i32.add
            local.get $1
            i32.store
            i32.const 66844
            local.get $1
            i32.store
            local.get $1
            i32.eqz
            br_if $block_0
            local.get $0
            i32.const 92
            i32.add
            local.tee $2
            local.get $0
            i32.const 24
            i32.add
            i32.store
            local.get $0
            i32.const 88
            i32.add
            local.set $6
          end ;; $if_4
          local.get $4
          i32.const 1
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_5
            i32.const 512
            call $github.com/moontrade/nogc.AllocZeroed
            local.set $3
            i32.const 1
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $3
            local.set $2
          end ;; $if_5
          global.get $18
          i32.eqz
          if $if_6
            local.get $6
            local.get $2
            i32.store
            local.get $2
            i32.const 0
            i32.const 512
            call $memset
            local.set $2
            local.get $1
            i32.const 0
            i32.store offset=32
            local.get $1
            i64.const -3221225472
            i64.store offset=24 align=4
            local.get $1
            i64.const 274877906954
            i64.store offset=16 align=4
            local.get $1
            i64.const 64
            i64.store offset=8 align=4
            local.get $1
            local.get $2
            i32.const 512
            i32.add
            i32.store offset=4
            local.get $1
            local.get $2
            i32.store
            local.get $0
            i32.const 8
            i32.add
            local.set $2
          end ;; $if_6
          local.get $4
          i32.const 2
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_7
            local.get $2
            call $time.Now
            i32.const 2
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_7
          global.get $18
          i32.eqz
          if $if_8
            local.get $1
            local.get $0
            i64.load offset=8
            local.get $0
            i64.load offset=16
            call $_lparen_time.Time_rparen_.UnixNano
            i64.store offset=80
          end ;; $if_8
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_9
          i32.const 66740
          local.get $5
          i32.store
          local.get $0
          i32.const 68
          i32.add
          i32.const 66844
          i32.load
          local.tee $1
          i32.store
          local.get $0
          i32.const 96
          i32.add
          global.set $17
          local.get $1
          return
        end ;; $if_9
      end ;; $block_0
      local.get $4
      i32.const 3
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_10
        call $runtime.nilPanic
        i32.const 3
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_10
      global.get $18
      i32.eqz
      if $if_11
        unreachable
      end ;; $if_11
      unreachable
    end ;; $block
    local.set $3
    global.get $19
    i32.load
    local.get $3
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $6
    i32.store offset=16
    global.get $19
    global.get $19
    i32.load
    i32.const 20
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $runtime.gcRegisterGlobal (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $5
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 48
        i32.sub
        local.tee $4
        global.set $17
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
        i32.const 66740
        i32.load
        local.set $6
        i32.const 66740
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
                          global.get $18
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
                          global.get $18
                          select
                          i32.eqz
                          if $if_3
                            call $github.com/moontrade/nogc.getCollector
                            local.set $2
                            i32.const 0
                            global.get $18
                            i32.const 1
                            i32.eq
                            br_if $block
                            drop
                            local.get $2
                            local.set $1
                          end ;; $if_3
                          global.get $18
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
                        global.get $18
                        select
                        local.set $3
                        local.get $5
                        i32.const 1
                        i32.eq
                        i32.const 1
                        global.get $18
                        select
                        if $if_5
                          call $github.com/moontrade/nogc.getCollector
                          local.set $2
                          i32.const 1
                          global.get $18
                          i32.const 1
                          i32.eq
                          br_if $block
                          drop
                          local.get $2
                          local.set $1
                        end ;; $if_5
                        global.get $18
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
                      global.get $18
                      select
                      local.set $3
                      local.get $5
                      i32.const 2
                      i32.eq
                      i32.const 1
                      global.get $18
                      select
                      if $if_7
                        call $github.com/moontrade/nogc.getCollector
                        local.set $2
                        i32.const 2
                        global.get $18
                        i32.const 1
                        i32.eq
                        br_if $block
                        drop
                        local.get $2
                        local.set $1
                      end ;; $if_7
                      global.get $18
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
                    global.get $18
                    select
                    local.set $3
                    local.get $5
                    i32.const 3
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_9
                      call $github.com/moontrade/nogc.getCollector
                      local.set $2
                      i32.const 3
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                      local.get $2
                      local.set $1
                    end ;; $if_9
                    global.get $18
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
                  global.get $18
                  select
                  local.set $3
                  local.get $5
                  i32.const 4
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_11
                    call $github.com/moontrade/nogc.getCollector
                    local.set $2
                    i32.const 4
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                    local.get $2
                    local.set $1
                  end ;; $if_11
                  global.get $18
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
                global.get $18
                select
                local.set $3
                local.get $5
                i32.const 5
                i32.eq
                i32.const 1
                global.get $18
                select
                if $if_13
                  call $github.com/moontrade/nogc.getCollector
                  local.set $2
                  i32.const 5
                  global.get $18
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                  local.get $2
                  local.set $1
                end ;; $if_13
                global.get $18
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
              global.get $18
              select
              local.set $3
              local.get $5
              i32.const 6
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_15
                call $github.com/moontrade/nogc.getCollector
                local.set $2
                i32.const 6
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $2
                local.set $1
              end ;; $if_15
              global.get $18
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
            global.get $18
            select
            local.set $3
            local.get $5
            i32.const 7
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_17
              call $github.com/moontrade/nogc.getCollector
              local.set $2
              i32.const 7
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $2
              local.set $1
            end ;; $if_17
            global.get $18
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
          global.get $18
          select
          if $if_19
            call $runtime.nilPanic
            i32.const 8
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_19
          global.get $18
          i32.eqz
          if $if_20
            unreachable
          end ;; $if_20
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_21
          local.get $1
          local.get $0
          i32.store
        end ;; $if_21
      end ;; $block_0
      global.get $18
      i32.eqz
      if $if_22
        i32.const 66740
        local.get $6
        i32.store
        local.get $4
        i32.const 48
        i32.add
        global.set $17
      end ;; $if_22
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 20
    i32.add
    i32.store
    )
  
  (func $runtime.run$1$gowrapper (type $0)
    (param $0 i32)
    (local $1 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if
      local.get $1
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_0
        call $runtime.run$1
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      local.get $1
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_1
        call $runtime.deadlock
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      global.get $18
      i32.eqz
      if $if_2
        unreachable
      end ;; $if_2
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
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
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $2
      i32.load
      local.set $0
      local.get $2
      i64.load offset=4 align=4
      local.set $3
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      local.get $3
      i64.const 0
      global.get $18
      select
      local.set $3
      loop $loop
        block $block_0
          global.get $18
          i32.eqz
          if $if_1
            i32.const 66761
            i32.load8_u
            local.set $0
          end ;; $if_1
          block $block_1
            block $block_2
              global.get $18
              i32.eqz
              if $if_2
                local.get $0
                br_if $block_2
                i32.const 66736
                i32.load
                i32.eqz
                local.set $0
              end ;; $if_2
              i32.const 0
              global.get $18
              i32.const 1
              local.get $0
              select
              local.get $1
              i32.const 0
              global.get $18
              select
              select
              if $if_3
                call $runtime.ticks
                local.set $4
                i32.const 0
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $4
                local.set $3
              end ;; $if_3
              global.get $18
              i32.eqz
              if $if_4
                i32.const 66736
                i32.load
                i32.eqz
                local.set $0
              end ;; $if_4
              block $block_3
                global.get $18
                i32.eqz
                if $if_5
                  local.get $0
                  br_if $block_3
                  i32.const 66736
                  i32.load
                  local.tee $0
                  i32.eqz
                  br_if $block_0
                  local.get $0
                  i64.load offset=8
                  local.get $3
                  i32.const 66768
                  i64.load
                  i64.sub
                  i64.gt_s
                  local.tee $0
                  br_if $block_3
                  i32.const 66736
                  i32.load
                  local.tee $0
                  i32.eqz
                  br_if $block_0
                  i32.const 66768
                  i32.const 66768
                  i64.load
                  local.get $0
                  i64.load offset=8
                  i64.add
                  i64.store
                  i32.const 66736
                  local.get $0
                  i32.load
                  i32.store
                  local.get $0
                  i32.const 0
                  i32.store
                end ;; $if_5
                local.get $1
                i32.const 1
                i32.eq
                i32.const 1
                global.get $18
                select
                if $if_6
                  i32.const 66728
                  local.get $0
                  call $_lparen_*internal/task.Queue_rparen_.Push
                  i32.const 1
                  global.get $18
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_6
              end ;; $block_3
              global.get $18
              i32.eqz
              if $if_7
                call $_lparen_*internal/task.Queue_rparen_.Pop
                local.tee $0
                br_if $block_1
                i32.const 66736
                i32.load
                i32.eqz
                local.tee $0
                br_if $block_2
                i32.const 66736
                i32.load
                local.tee $0
                i32.eqz
                br_if $block_0
                i32.const 66768
                i64.load
                local.get $0
                i64.load offset=8
                local.get $3
                i64.sub
                i64.add
                local.set $3
              end ;; $if_7
              local.get $1
              i32.const 2
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_8
                local.get $3
                call $setTimeout
                i32.const 2
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_8
            end ;; $block_2
            global.get $18
            i32.eqz
            if $if_9
              return
            end ;; $if_9
          end ;; $block_1
          local.get $1
          i32.const 3
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_10
            local.get $0
            call $_lparen_*internal/task.Task_rparen_.Resume
            i32.const 3
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_10
          global.get $18
          i32.eqz
          br_if $loop
        end ;; $block_0
      end ;; $loop
      local.get $1
      i32.const 4
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_11
        call $runtime.nilPanic
        i32.const 4
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_11
      global.get $18
      i32.eqz
      if $if_12
        unreachable
      end ;; $if_12
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $3
    i64.store offset=4 align=4
    global.get $19
    global.get $19
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $runtime.run$1 (type $1)
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
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (local $16 i32)
    (local $17 i32)
    (local $18 i32)
    (local $19 i32)
    (local $20 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 76
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $3
      i32.load
      local.set $0
      local.get $3
      i32.load offset=4
      local.set $2
      local.get $3
      i32.load offset=12
      local.set $4
      local.get $3
      i32.load offset=16
      local.set $6
      local.get $3
      i32.load offset=20
      local.set $7
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
      i32.load offset=40
      local.set $12
      local.get $3
      i32.load offset=44
      local.set $13
      local.get $3
      i32.load offset=48
      local.set $14
      local.get $3
      i32.load offset=52
      local.set $15
      local.get $3
      i32.load offset=56
      local.set $16
      local.get $3
      i32.load offset=60
      local.set $17
      local.get $3
      i32.load offset=64
      local.set $18
      local.get $3
      i32.load offset=68
      local.set $19
      local.get $3
      i32.load offset=72
      local.set $20
      local.get $3
      i32.load offset=8
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $5
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 208
        i32.sub
        local.tee $2
        global.set $17
        local.get $2
        i32.const 144
        i32.add
        local.tee $4
        i64.const 0
        i64.store
        local.get $2
        i32.const 112
        i32.add
        local.tee $7
        i64.const 0
        i64.store
        local.get $2
        i32.const 104
        i32.add
        local.tee $11
        i64.const 0
        i64.store
        local.get $2
        i32.const 96
        i32.add
        local.tee $9
        i64.const 0
        i64.store
        local.get $2
        i32.const 88
        i32.add
        local.tee $10
        i64.const 0
        i64.store
        local.get $2
        i32.const 80
        i32.add
        local.tee $0
        i64.const 0
        i64.store
        local.get $2
        i32.const 72
        i32.add
        local.tee $1
        i64.const 0
        i64.store
        local.get $2
        i64.const 0
        i64.store offset=200
        local.get $2
        i64.const 0
        i64.store offset=192
        local.get $2
        i64.const 0
        i64.store offset=184
        local.get $2
        i64.const 0
        i64.store offset=176
        local.get $2
        i64.const 0
        i64.store offset=168
        local.get $2
        i64.const 0
        i64.store offset=160
        local.get $2
        i64.const 0
        i64.store offset=152
        local.get $2
        i64.const 0
        i64.store offset=136
        local.get $2
        i64.const 0
        i64.store offset=128
        local.get $2
        i64.const 0
        i64.store offset=120
        local.get $2
        i64.const 146028888064
        i64.store offset=64
        local.get $2
        i32.const 66740
        i32.load
        local.tee $12
        i32.store offset=64
        i32.const 66740
        local.get $2
        i32.const -64
        i32.sub
        i32.store
        i32.const 66596
        memory.size
        i32.const 16
        i32.shl
        local.tee $6
        i32.store
        call $__wasm_call_ctors
      end ;; $if_1
      local.get $5
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        i32.const 66748
        i32.const 8
        call $runtime.gcRegisterGlobal
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_2
      local.get $5
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_3
        i32.const 4
        call $runtime.alloc
        local.set $3
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $6
      end ;; $if_3
      global.get $18
      i32.eqz
      if $if_4
        local.get $1
        local.get $6
        i32.store
        local.get $2
        i32.const -64
        i32.sub
        local.tee $1
        i32.const 12
        i32.add
        local.set $8
      end ;; $if_4
      local.get $5
      i32.const 2
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_5
        i32.const 32
        call $runtime.alloc
        local.set $3
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $1
      end ;; $if_5
      global.get $18
      i32.eqz
      if $if_6
        local.get $8
        local.get $1
        i32.store
        local.get $2
        i32.const 84
        i32.add
        local.tee $8
        local.get $1
        i32.store
      end ;; $if_6
      local.get $5
      i32.const 3
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_7
        i32.const 1
        call $runtime.alloc
        local.set $3
        i32.const 3
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $8
      end ;; $if_7
      global.get $18
      i32.eqz
      if $if_8
        local.get $1
        local.get $8
        i32.store offset=28
        local.get $1
        i64.const 4294967297
        i64.store align=4
        local.get $0
        local.get $8
        i32.store
        local.get $6
        local.get $1
        i32.store
      end ;; $if_8
      local.get $5
      i32.const 4
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_9
        i32.const 66532
        i32.const 13
        call $runtime.printstring
        i32.const 4
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_9
      local.get $5
      i32.const 5
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_10
        call $runtime.printnl
        i32.const 5
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_10
      local.get $5
      i32.const 6
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_11
        i32.const 12
        call $runtime.alloc
        local.set $3
        i32.const 6
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $0
      end ;; $if_11
      global.get $18
      i32.eqz
      if $if_12
        local.get $10
        local.get $0
        i32.store
        local.get $2
        i32.const 92
        i32.add
        local.set $10
      end ;; $if_12
      local.get $5
      i32.const 7
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_13
        i32.const 9000
        call $runtime.alloc
        local.set $3
        i32.const 7
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $1
      end ;; $if_13
      global.get $18
      i32.eqz
      if $if_14
        local.get $10
        local.get $1
        i32.store
        local.get $9
        local.get $1
        i32.store
        local.get $0
        i64.const 38654705673000
        i64.store offset=4 align=4
        local.get $0
        local.get $1
        i32.store
        local.get $2
        i32.const 100
        i32.add
        local.set $9
      end ;; $if_14
      local.get $5
      i32.const 8
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_15
        i32.const 8
        call $runtime.alloc
        local.set $3
        i32.const 8
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $3
        local.set $1
      end ;; $if_15
      global.get $18
      i32.eqz
      if $if_16
        local.get $9
        local.get $1
        i32.store
        local.get $11
        local.get $1
        i32.store
        local.get $1
        local.get $6
        i32.store offset=4
        local.get $1
        local.get $0
        i32.store
      end ;; $if_16
      local.get $5
      i32.const 9
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_17
        i32.const 3
        local.get $1
        call $internal/task.start
        i32.const 9
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_17
      local.get $5
      i32.const 10
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_18
        i32.const 4
        i32.const 0
        call $internal/task.start
        i32.const 10
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_18
      global.get $18
      i32.eqz
      if $if_19
        local.get $2
        i32.const 108
        i32.add
        local.get $6
        i32.load
        local.tee $1
        i32.store
        local.get $7
        local.get $1
        i32.store
        local.get $4
        local.get $2
        i32.const 40
        i32.add
        i32.store
        local.get $1
        i32.eqz
        local.set $0
      end ;; $if_19
      block $block_0
        block $block_1
          block $block_2
            global.get $18
            i32.eqz
            if $if_20
              local.get $0
              br_if $block_2
              i32.const 0
              local.set $0
              local.get $1
              i32.load8_u offset=8
              local.set $4
            end ;; $if_20
            block $block_3
              block $block_4
                global.get $18
                i32.eqz
                if $if_21
                  block $block_5
                    local.get $4
                    br_table
                      $block_0 $block_0 $block_4 $block_4 $block_3
                      $block_5 ;; default
                  end ;; $block_5
                end ;; $if_21
                local.get $5
                i32.const 11
                i32.eq
                i32.const 1
                global.get $18
                select
                if $if_22
                  i32.const 65950
                  i32.const 21
                  call $runtime.runtimePanic
                  i32.const 11
                  global.get $18
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_22
                global.get $18
                i32.eqz
                if $if_23
                  unreachable
                end ;; $if_23
              end ;; $block_4
              local.get $0
              local.get $2
              i32.const 15
              i32.add
              global.get $18
              select
              local.set $0
              local.get $5
              i32.const 12
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_24
                local.get $1
                local.get $0
                call $_lparen_*runtime.channel_rparen_.pop
                local.set $3
                i32.const 12
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $3
                local.set $4
              end ;; $if_24
              global.get $18
              i32.eqz
              if $if_25
                local.get $2
                i32.const 116
                i32.add
                local.tee $7
                local.get $1
                i32.load offset=12
                local.tee $0
                i32.store
                local.get $4
                i32.const 1
                i32.and
                local.tee $4
                br_if $block_1
                local.get $0
                i32.eqz
                if $if_26
                  i32.const 0
                  local.set $0
                  br $block_0
                end ;; $if_26
                local.get $2
                i32.const 132
                i32.add
                local.set $4
              end ;; $if_25
              local.get $5
              i32.const 13
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_27
                local.get $1
                call $_lparen_*runtime.channel_rparen_.resumeTX
                local.set $3
                i32.const 13
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $3
                local.set $0
              end ;; $if_27
              global.get $18
              i32.eqz
              if $if_28
                local.get $4
                local.get $0
                i32.store
                local.get $2
                i32.const 15
                i32.add
                local.get $0
                local.get $1
                i32.load
                local.tee $7
                call $memcpy
                drop
                local.get $2
                i32.const 136
                i32.add
                local.get $1
                i32.load offset=12
                local.tee $4
                i32.store
                i32.const 1
                local.set $0
                local.get $4
                br_if $block_0
                local.get $1
                i32.const 0
                i32.store8 offset=8
                i32.const 1
                local.set $0
                br $block_0
              end ;; $if_28
            end ;; $block_3
            global.get $18
            i32.eqz
            if $if_29
              i32.const 1
              local.set $0
              local.get $2
              i32.const 15
              i32.add
              local.set $4
            end ;; $if_29
            local.get $5
            i32.const 14
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_30
              local.get $1
              local.get $4
              call $_lparen_*runtime.channel_rparen_.pop
              local.set $3
              i32.const 14
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
              local.get $3
              local.set $4
            end ;; $if_30
            global.get $18
            i32.eqz
            if $if_31
              local.get $4
              i32.const 1
              i32.and
              br_if $block_0
              local.get $2
              i32.const 15
              i32.add
              i32.const 0
              local.get $1
              i32.load
              local.tee $7
              call $memset
              drop
              br $block_0
            end ;; $if_31
          end ;; $block_2
          local.get $5
          i32.const 15
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_32
            call $runtime.deadlock
            i32.const 15
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_32
          global.get $18
          i32.eqz
          if $if_33
            unreachable
          end ;; $if_33
        end ;; $block_1
        local.get $0
        local.get $0
        i32.eqz
        global.get $18
        select
        local.set $0
        block $block_6
          global.get $18
          i32.eqz
          if $if_34
            local.get $0
            br_if $block_6
            local.get $2
            i32.const 120
            i32.add
            local.set $0
          end ;; $if_34
          local.get $5
          i32.const 16
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_35
            local.get $1
            call $_lparen_*runtime.channel_rparen_.resumeTX
            local.set $3
            i32.const 16
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $3
            local.set $4
          end ;; $if_35
          global.get $18
          i32.eqz
          if $if_36
            local.get $0
            local.get $4
            i32.store
            block $block_7
              local.get $1
              i32.load offset=4
              local.tee $0
              i32.eqz
              local.tee $7
              br_if $block_7
              local.get $1
              i32.load offset=24
              local.tee $7
              local.get $0
              i32.eq
              br_if $block_7
              local.get $2
              i32.const 124
              i32.add
              local.get $1
              i32.load offset=28
              local.tee $0
              i32.store
              local.get $1
              i32.load
              local.tee $7
              local.get $1
              i32.load offset=16
              i32.mul
              local.tee $11
              local.get $0
              i32.add
              local.get $4
              local.get $7
              call $memcpy
              drop
              local.get $1
              local.get $1
              i32.load offset=24
              i32.const 1
              i32.add
              i32.store offset=24
              local.get $1
              i32.load offset=16
              i32.const 1
              i32.add
              local.tee $0
              local.get $1
              i32.load offset=4
              i32.eq
              local.set $4
              local.get $1
              i32.const 0
              local.get $0
              local.get $4
              select
              i32.store offset=16
            end ;; $block_7
            local.get $2
            i32.const 128
            i32.add
            local.get $1
            i32.load offset=12
            local.tee $0
            i32.store
            local.get $0
            br_if $block_6
            local.get $1
            i32.const 3
            i32.store8 offset=8
          end ;; $if_36
        end ;; $block_6
        global.get $18
        i32.eqz
        if $if_37
          i32.const 1
          local.set $0
          local.get $1
          i32.load offset=24
          br_if $block_0
          local.get $1
          i32.const 0
          i32.store8 offset=8
          i32.const 1
          local.set $0
        end ;; $if_37
      end ;; $block_0
      local.get $0
      local.get $0
      i32.const 1
      i32.and
      global.get $18
      select
      local.set $0
      block $block_8
        block $block_9
          block $block_10
            block $block_11
              global.get $18
              i32.eqz
              if $if_38
                local.get $0
                br_if $block_11
                local.get $2
                i32.const 140
                i32.add
                call $internal/task.Current
                local.tee $0
                i32.store
                local.get $1
                i32.const 1
                i32.store8 offset=8
                local.get $0
                i32.eqz
                br_if $block_10
                local.get $0
                i64.const 1
                i64.store offset=8
                local.get $0
                local.get $2
                i32.const 15
                i32.add
                i32.store offset=4
                local.get $2
                i32.const 56
                i32.add
                i64.const 0
                i64.store
                local.get $2
                i32.const 48
                i32.add
                i64.const 0
                i64.store
                local.get $2
                i32.const 148
                i32.add
                local.get $1
                i32.load offset=12
                local.tee $4
                i32.store
                local.get $2
                i32.const 32
                i32.add
                local.tee $7
                i64.const 0
                i64.store
                local.get $2
                i64.const 0
                i64.store offset=24
                local.get $2
                i64.const 0
                i64.store offset=40
                local.get $2
                local.get $0
                i32.store offset=20
                local.get $2
                local.get $4
                i32.store offset=16
                local.get $1
                local.get $2
                i32.const 16
                i32.add
                i32.store offset=12
              end ;; $if_38
              local.get $5
              i32.const 17
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_39
                call $internal/task.Pause
                i32.const 17
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_39
              global.get $18
              i32.eqz
              if $if_40
                local.get $0
                i64.const 0
                i64.store offset=8
                local.get $0
                i32.const 0
                i32.store offset=4
              end ;; $if_40
            end ;; $block_11
            global.get $18
            i32.eqz
            if $if_41
              local.get $2
              i32.const 152
              i32.add
              local.tee $0
              local.get $6
              i32.load
              local.tee $6
              i32.store
            end ;; $if_41
            global.get $18
            i32.const 1
            local.get $6
            select
            if $if_42
              local.get $5
              i32.const 18
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_43
                i32.const 65971
                i32.const 20
                call $runtime.runtimePanic
                i32.const 18
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_43
              global.get $18
              i32.eqz
              if $if_44
                unreachable
              end ;; $if_44
            end ;; $if_42
            global.get $18
            i32.eqz
            if $if_45
              local.get $6
              i32.load8_u offset=8
              i32.const 1
              i32.sub
              local.set $0
            end ;; $if_45
            block $block_12
              global.get $18
              i32.eqz
              if $if_46
                block $block_13
                  local.get $0
                  br_table
                    $block_13 $block_9 $block_12 $block_8
                    $block_12 ;; default
                end ;; $block_13
                local.get $6
                i32.const 4
                i32.store8 offset=8
                local.get $2
                i32.const 160
                i32.add
                local.set $11
                local.get $2
                i32.const 164
                i32.add
                local.set $9
                local.get $2
                i32.const 168
                i32.add
                local.set $10
                local.get $2
                i32.const 176
                i32.add
                local.set $13
                local.get $2
                i32.const 204
                i32.add
                local.set $14
                local.get $2
                i32.const 180
                i32.add
                local.set $15
                local.get $2
                i32.const 196
                i32.add
                local.set $16
                local.get $2
                i32.const 200
                i32.add
                local.set $17
                local.get $2
                i32.const 184
                i32.add
                local.set $18
                local.get $2
                i32.const 188
                i32.add
                local.set $19
                local.get $2
                i32.const 192
                i32.add
                local.set $20
                local.get $2
                i32.const 156
                i32.add
                local.set $7
                local.get $2
                i32.const 172
                i32.add
                local.set $8
              end ;; $if_46
              loop $loop
                global.get $18
                i32.eqz
                if $if_47
                  local.get $7
                  local.get $6
                  i32.load offset=12
                  local.tee $1
                  i32.store
                  local.get $1
                  i32.eqz
                  br_if $block_12
                  local.get $11
                  local.get $6
                  i32.load offset=12
                  local.tee $1
                  i32.store
                  local.get $9
                  local.get $6
                  i32.load offset=12
                  local.tee $0
                  i32.store
                  local.get $0
                  i32.eqz
                  br_if $block_10
                  local.get $10
                  local.get $0
                  i32.load
                  local.tee $0
                  i32.store
                  local.get $6
                  local.get $0
                  i32.store offset=12
                  local.get $1
                  i32.eqz
                  br_if $block_10
                  local.get $8
                  local.get $1
                  i32.load offset=4
                  local.tee $0
                  i32.store
                  local.get $0
                  i32.eqz
                  br_if $block_10
                  local.get $13
                  local.get $0
                  i32.load offset=4
                  local.tee $0
                  i32.store
                  local.get $14
                  local.get $0
                  i32.store
                  local.get $0
                  i32.const 0
                  local.get $6
                  i32.load
                  call $memset
                  drop
                  local.get $15
                  local.get $1
                  i32.load offset=4
                  local.tee $0
                  i32.store
                  local.get $0
                  i32.eqz
                  br_if $block_10
                  local.get $0
                  i64.const 0
                  i64.store offset=8
                  local.get $16
                  local.get $1
                  i32.load offset=8
                  local.tee $0
                  i32.store
                  local.get $0
                  i32.eqz
                  local.set $0
                end ;; $if_47
                block $block_14
                  global.get $18
                  i32.eqz
                  if $if_48
                    local.get $0
                    br_if $block_14
                    local.get $18
                    local.get $1
                    i32.load offset=4
                    local.tee $0
                    i32.store
                    local.get $0
                    i32.eqz
                    br_if $block_10
                    local.get $19
                    local.get $1
                    i32.load offset=8
                    local.tee $4
                    i32.store
                    local.get $20
                    local.get $4
                    i32.store
                    local.get $0
                    local.get $4
                    i32.store offset=4
                  end ;; $if_48
                  local.get $5
                  i32.const 19
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_49
                    local.get $1
                    call $_lparen_*runtime.channelBlockedList_rparen_.detach
                    i32.const 19
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_49
                end ;; $block_14
                global.get $18
                i32.eqz
                if $if_50
                  local.get $17
                  local.get $1
                  i32.load offset=4
                  local.tee $1
                  i32.store
                end ;; $if_50
                local.get $5
                i32.const 20
                i32.eq
                i32.const 1
                global.get $18
                select
                if $if_51
                  i32.const 66728
                  local.get $1
                  call $_lparen_*internal/task.Queue_rparen_.Push
                  i32.const 20
                  global.get $18
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_51
                global.get $18
                i32.eqz
                br_if $loop
              end ;; $loop
            end ;; $block_12
            global.get $18
            i32.eqz
            if $if_52
              local.get $6
              i32.const 4
              i32.store8 offset=8
              i32.const 66740
              local.get $12
              i32.store
            end ;; $if_52
            local.get $5
            i32.const 21
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_53
              i32.const 66545
              i32.const 4
              call $runtime.printstring
              i32.const 21
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_53
            local.get $5
            i32.const 22
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_54
              call $runtime.printnl
              i32.const 22
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_54
            global.get $18
            i32.eqz
            if $if_55
              i32.const 66761
              i32.const 1
              i32.store8
              local.get $2
              i32.const 208
              i32.add
              global.set $17
              return
            end ;; $if_55
          end ;; $block_10
          local.get $5
          i32.const 23
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_56
            call $runtime.nilPanic
            i32.const 23
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_56
          global.get $18
          i32.eqz
          if $if_57
            unreachable
          end ;; $if_57
        end ;; $block_9
        local.get $5
        i32.const 24
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_58
          i32.const 66014
          i32.const 25
          call $runtime.runtimePanic
          i32.const 24
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_58
        global.get $18
        i32.eqz
        if $if_59
          unreachable
        end ;; $if_59
      end ;; $block_8
      local.get $5
      i32.const 25
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_60
        i32.const 65991
        i32.const 23
        call $runtime.runtimePanic
        i32.const 25
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_60
      global.get $18
      i32.eqz
      if $if_61
        unreachable
      end ;; $if_61
      return
    end ;; $block
    local.set $3
    global.get $19
    i32.load
    local.get $3
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $2
    i32.store offset=4
    local.get $3
    local.get $1
    i32.store offset=8
    local.get $3
    local.get $4
    i32.store offset=12
    local.get $3
    local.get $6
    i32.store offset=16
    local.get $3
    local.get $7
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
    local.get $3
    local.get $12
    i32.store offset=40
    local.get $3
    local.get $13
    i32.store offset=44
    local.get $3
    local.get $14
    i32.store offset=48
    local.get $3
    local.get $15
    i32.store offset=52
    local.get $3
    local.get $16
    i32.store offset=56
    local.get $3
    local.get $17
    i32.store offset=60
    local.get $3
    local.get $18
    i32.store offset=64
    local.get $3
    local.get $19
    i32.store offset=68
    local.get $3
    local.get $20
    i32.store offset=72
    global.get $19
    global.get $19
    i32.load
    i32.const 76
    i32.add
    i32.store
    )
  
  (func $main.main$1$gowrapper (type $0)
    (param $0 i32)
    (local $1 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $19
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0 (result i32)
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if_0
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_1
        local.get $0
        call $main.main$1
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_1
      global.get $18
      i32.eqz
      if $if_2
        unreachable
      end ;; $if_2
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $main.main$2$gowrapper (type $0)
    (param $0 i32)
    (local $1 i32)
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if (result i32)
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
      else
        local.get $1
      end ;; $if
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_0
        call $main.main$2
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        unreachable
      end ;; $if_1
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $resume (type $1)
    (local $0 i32)
    (local $1 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get $19
      i32.load
      i32.load
      local.set $0
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $1
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        i32.const 66760
        i32.load8_u
        i32.eqz
        local.set $0
      end ;; $if_1
      block $block_0
        global.get $18
        i32.const 1
        local.get $0
        select
        if $if_2
          loop $loop
            global.get $18
            i32.eqz
            if $if_3
              i32.const 66761
              i32.load8_u
              br_if $block_0
              call $_lparen_*internal/task.Queue_rparen_.Pop
              local.tee $0
              i32.eqz
              br_if $block_0
            end ;; $if_3
            local.get $1
            i32.const 0
            global.get $18
            select
            i32.eqz
            if $if_4
              local.get $0
              call $_lparen_*internal/task.Task_rparen_.Resume
              i32.const 0
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_4
            global.get $18
            i32.eqz
            br_if $loop
          end ;; $loop
        end ;; $if_2
        global.get $18
        i32.eqz
        if $if_5
          i32.const 66760
          i32.const 1
          i32.store8
        end ;; $if_5
        local.get $1
        i32.const 1
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_6
          call $runtime.scheduler
          i32.const 1
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_6
        global.get $18
        i32.eqz
        if $if_7
          i32.const 66760
          i32.const 0
          i32.store8
        end ;; $if_7
      end ;; $block_0
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    )
  
  (func $time.Sleep (type $1)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i64)
    (local $5 i64)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $2
      i32.load
      local.set $1
      local.get $2
      i64.load offset=4 align=4
      local.set $4
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        call $internal/task.Current
        local.tee $1
        i32.eqz
        local.set $0
      end ;; $if_1
      block $block_0
        global.get $18
        i32.eqz
        if $if_2
          local.get $0
          br_if $block_0
          local.get $1
          i64.const 1000000000
          i64.store offset=8
        end ;; $if_2
        local.get $3
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_3
          call $runtime.ticks
          local.set $5
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
          local.get $5
          local.set $4
        end ;; $if_3
        global.get $18
        i32.eqz
        if $if_4
          i32.const 66736
          i32.load
          i32.eqz
          if $if_5
            i32.const 66768
            local.get $4
            i64.store
          end ;; $if_5
          i32.const 66736
          local.set $0
          block $block_1
            loop $loop
              local.get $0
              i32.load
              i32.eqz
              br_if $block_1
              local.get $0
              i32.load
              local.tee $2
              i32.eqz
              br_if $block_0
              local.get $1
              i64.load offset=8
              local.get $2
              i64.load offset=8
              i64.lt_u
              br_if $block_1
              local.get $0
              i32.load
              local.tee $2
              i32.eqz
              br_if $block_0
              local.get $1
              local.get $1
              i64.load offset=8
              local.get $2
              i64.load offset=8
              i64.sub
              i64.store offset=8
              local.get $0
              i32.load
              local.tee $0
              br_if $loop
            end ;; $loop
            br $block_0
          end ;; $block_1
          local.get $0
          i32.load
          if $if_6
            local.get $0
            i32.load
            local.tee $2
            i32.eqz
            br_if $block_0
            local.get $2
            local.get $2
            i64.load offset=8
            local.get $1
            i64.load offset=8
            i64.sub
            i64.store offset=8
          end ;; $if_6
          local.get $1
          local.get $0
          i32.load
          i32.store
          local.get $0
          local.get $1
          i32.store
        end ;; $if_4
        local.get $3
        i32.const 1
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_7
          call $internal/task.Pause
          i32.const 1
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        global.get $18
        i32.eqz
        if $if_8
          return
        end ;; $if_8
      end ;; $block_0
      local.get $3
      i32.const 2
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_9
        call $runtime.nilPanic
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_9
      global.get $18
      i32.eqz
      if $if_10
        unreachable
      end ;; $if_10
      return
    end ;; $block
    local.set $0
    global.get $19
    i32.load
    local.get $0
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $0
    local.get $1
    i32.store
    local.get $0
    local.get $4
    i64.store offset=4 align=4
    global.get $19
    global.get $19
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $_lparen_time.Time_rparen_.UnixNano (type $14)
    (param $0 i64)
    (param $1 i64)
    (result i64)
    (local $2 i32)
    global.get $17
    i32.const 32
    i32.sub
    local.tee $2
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
    local.get $1
    local.get $0
    i64.const 30
    i64.shr_u
    i64.const 8589934591
    i64.and
    i64.const 59453308800
    i64.add
    local.get $0
    i64.const 0
    i64.ge_s
    select
    i64.const 1000000000
    i64.mul
    local.get $0
    i64.const 1073741823
    i64.and
    i64.add
    i64.const 6795364578871345152
    i64.sub
    )
  
  (func $time.Now (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i64)
    (local $5 i64)
    (local $6 i64)
    (local $7 i64)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $2
      local.get $1
      i64.load offset=8 align=4
      local.set $4
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 48
        i32.sub
        local.tee $2
        global.set $17
      end ;; $if_1
      local.get $3
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        call $runtime.ticks
        local.set $5
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $5
        local.set $4
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        local.get $4
        i64.const 1000000000
        i64.div_s
        local.tee $5
        i64.const -1000000000
        i64.mul
        local.get $4
        i64.add
        local.set $6
        block $block_0
          local.get $5
          i64.const 2682288000
          i64.add
          local.tee $7
          i64.const 8589934592
          i64.ge_u
          if $if_4
            local.get $2
            i32.const 16
            i32.add
            local.tee $1
            i32.const 0
            i32.store
            local.get $2
            i32.const 8
            i32.add
            local.get $5
            i64.const 62135596800
            i64.add
            local.tee $4
            i64.store
            local.get $2
            local.get $6
            i64.const 32
            i64.shl
            i64.const 32
            i64.shr_s
            local.tee $5
            i64.store
            br $block_0
          end ;; $if_4
          local.get $2
          i32.const 40
          i32.add
          local.tee $1
          i32.const 0
          i32.store
          local.get $2
          i32.const 32
          i32.add
          local.get $4
          i64.const 1
          i64.add
          local.tee $4
          i64.store
          local.get $2
          local.get $7
          i64.const 30
          i64.shl
          local.get $6
          i64.const 32
          i64.shl
          i64.const 32
          i64.shr_s
          i64.or
          i64.const -9223372036854775808
          i64.or
          local.tee $5
          i64.store offset=24
        end ;; $block_0
        local.get $1
        i32.const 66776
        i32.store
        local.get $0
        local.get $4
        i64.store offset=8
        local.get $0
        local.get $5
        i64.store
        local.get $2
        i32.const 48
        i32.add
        global.set $17
      end ;; $if_3
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $4
    i64.store offset=8 align=4
    global.get $19
    global.get $19
    i32.load
    i32.const 16
    i32.add
    i32.store
    )
  
  (func $malloc (type $3)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $3
      local.get $1
      i32.load offset=12
      local.set $4
      local.get $1
      i32.load offset=16
      local.set $5
      local.get $1
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 32
        i32.sub
        local.tee $3
        global.set $17
        local.get $3
        i32.const 16
        i32.add
        i32.const 66840
        i32.load
        local.tee $2
        i32.store
        local.get $3
        i64.const 0
        i64.store offset=20 align=4
        local.get $3
        i32.const 3
        i32.store offset=12
        i32.const 66740
        i32.load
        local.set $5
        i32.const 66740
        local.get $3
        i32.const 8
        i32.add
        local.tee $4
        i32.store
        local.get $3
        local.get $5
        i32.store offset=8
      end ;; $if_1
      global.get $18
      i32.const 1
      local.get $2
      select
      if $if_2
        local.get $6
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_3
          i32.const 65832
          call $runtime._panic
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        global.get $18
        i32.eqz
        if $if_4
          unreachable
        end ;; $if_4
      end ;; $if_2
      local.get $4
      local.get $3
      i32.const 20
      i32.add
      global.get $18
      select
      local.set $4
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_5
        local.get $2
        local.get $0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.allocateBlock
        local.set $1
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $2
      end ;; $if_5
      global.get $18
      i32.eqz
      if $if_6
        local.get $4
        local.get $2
        i32.store
        local.get $3
        i32.const 24
        i32.add
        local.get $2
        i32.store
        i32.const 66740
        local.get $5
        i32.store
        local.get $3
        i32.const 32
        i32.add
        global.set $17
        local.get $2
        i32.const 4
        i32.add
        i32.const 0
        local.get $2
        select
        return
      end ;; $if_6
      unreachable
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $1
    local.get $4
    i32.store offset=12
    local.get $1
    local.get $5
    i32.store offset=16
    global.get $19
    global.get $19
    i32.load
    i32.const 20
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
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 16
        i32.sub
        local.tee $4
        global.set $17
        local.get $4
        i32.const 8
        i32.add
        i32.const 66840
        i32.load
        local.tee $3
        i32.store
        local.get $4
        i32.const 1
        i32.store offset=4
        local.get $4
        i32.const 66740
        i32.load
        i32.store
        local.get $0
        local.get $1
        i32.mul
        local.set $0
      end ;; $if_1
      local.get $2
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        local.get $3
        local.get $0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.AllocZeroed
        local.set $2
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $1
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        local.get $4
        i32.const 16
        i32.add
        global.set $17
        local.get $1
        return
      end ;; $if_3
      unreachable
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
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
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 36
      i32.sub
      i32.store
      global.get $19
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
      i32.load offset=28
      local.set $9
      local.get $2
      i32.load offset=32
      local.set $10
      local.get $2
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 48
        i32.sub
        local.tee $3
        global.set $17
        local.get $3
        i32.const 36
        i32.add
        local.tee $4
        i64.const 0
        i64.store align=4
        local.get $3
        i32.const 28
        i32.add
        local.tee $5
        i64.const 0
        i64.store align=4
        local.get $3
        i32.const 20
        i32.add
        local.tee $9
        i64.const 0
        i64.store align=4
        local.get $3
        i32.const 12
        i32.add
        local.tee $10
        i64.const 0
        i64.store align=4
        local.get $3
        i32.const 8
        i32.add
        i32.const 66840
        i32.load
        local.tee $7
        i32.store
        local.get $3
        i32.const 9
        i32.store offset=4
        i32.const 66740
        i32.load
        local.set $8
        i32.const 66740
        local.get $3
        i32.store
        local.get $3
        local.get $8
        i32.store
      end ;; $if_1
      local.get $6
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        local.get $0
        call $github.com/moontrade/nogc/alloc/tlsf.checkUsedBlock
        local.set $2
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $0
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        local.get $10
        local.get $0
        i32.store
        local.get $5
        local.get $0
        i32.store
      end ;; $if_3
      local.get $6
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_4
        local.get $7
        local.get $1
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.allocateBlock
        local.set $2
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $2
        local.set $1
      end ;; $if_4
      global.get $18
      i32.eqz
      if $if_5
        local.get $4
        local.get $1
        i32.store
        local.get $3
        i32.const 40
        i32.add
        local.get $1
        i32.store
        local.get $9
        local.get $1
        i32.store
        local.get $3
        i32.const 16
        i32.add
        local.get $1
        i32.store
        local.get $1
        i32.eqz
        local.set $4
      end ;; $if_5
      block $block_0
        block $block_1
          global.get $18
          i32.eqz
          if $if_6
            local.get $4
            br_if $block_1
            local.get $3
            i32.const 32
            i32.add
            local.get $0
            i32.const 4
            i32.add
            local.tee $4
            i32.store
            local.get $3
            i32.const 24
            i32.add
            local.get $1
            i32.const 4
            i32.add
            local.tee $5
            i32.store
            local.get $0
            i32.eqz
            br_if $block_0
            local.get $5
            local.get $4
            local.get $0
            i32.load
            i32.const -4
            i32.and
            call $memcpy
            drop
          end ;; $if_6
          local.get $6
          i32.const 2
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_7
            local.get $7
            local.get $0
            call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.freeBlock
            i32.const 2
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_7
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_8
          i32.const 66740
          local.get $8
          i32.store
          local.get $3
          i32.const 48
          i32.add
          global.set $17
          local.get $1
          i32.const 4
          i32.add
          i32.const 0
          local.get $1
          select
          return
        end ;; $if_8
      end ;; $block_0
      local.get $6
      i32.const 3
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_9
        call $runtime.nilPanic
        i32.const 3
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_9
      global.get $18
      i32.eqz
      if $if_10
        unreachable
      end ;; $if_10
      unreachable
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $2
    local.get $9
    i32.store offset=28
    local.get $2
    local.get $10
    i32.store offset=32
    global.get $19
    global.get $19
    i32.load
    i32.const 36
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $free (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        i32.const 66840
        i32.load
        local.set $2
      end ;; $if_1
      local.get $3
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        local.get $0
        call $github.com/moontrade/nogc/alloc/tlsf.checkUsedBlock
        local.set $1
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_2
      local.get $3
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_3
        local.get $2
        local.get $0
        call $_lparen_*github.com/moontrade/nogc/alloc/tlsf.Heap_rparen_.freeBlock
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_3
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
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
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $18
      i32.const 1
      local.get $0
      select
      if $if_1
        local.get $2
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_2
          call $runtime.nilPanic
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_2
        global.get $18
        i32.eqz
        if $if_3
          unreachable
        end ;; $if_3
      end ;; $if_1
      global.get $18
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
        global.get $18
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
        global.get $18
        select
        if $if_6
          call $runtime.divideByZeroPanic
          i32.const 1
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_6
        global.get $18
        i32.eqz
        if $if_7
          unreachable
        end ;; $if_7
      end ;; $block_0
      global.get $18
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
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 20
    i32.add
    i32.store
    i32.const 0
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRecursive (type $6)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get $19
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
      local.set $7
      local.get $3
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $6
      end ;; $if_0
      local.get $4
      local.get $2
      i32.const 65
      i32.ge_s
      global.get $18
      select
      local.set $4
      block $block_0
        block $block_1
          global.get $18
          i32.eqz
          if $if_1
            local.get $4
            br_if $block_1
            local.get $1
            i32.eqz
            br_if $block_0
            local.get $1
            i32.load
            local.tee $4
            br_if $block_1
            local.get $1
            i32.const 1
            i32.store
          end ;; $if_1
          local.get $6
          i32.const 0
          global.get $18
          select
          i32.eqz
          if $if_2
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc.gc_rparen_.isReserved
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_2
          global.get $18
          i32.eqz
          if $if_3
            local.get $1
            i32.load offset=4
            local.tee $4
            i32.const 3
            i32.and
            br_if $block_1
            local.get $2
            i32.const 1
            i32.add
            local.set $7
            local.get $4
            local.get $1
            i32.const 8
            i32.add
            local.tee $1
            i32.add
            local.set $4
          end ;; $if_3
          loop $loop
            global.get $18
            i32.eqz
            if $if_4
              local.get $1
              local.get $4
              i32.ge_u
              br_if $block_1
              local.get $0
              i32.eqz
              br_if $block_0
              local.get $1
              i32.load
              i32.const 8
              i32.sub
              local.tee $2
              local.get $0
              i32.load offset=28
              i32.lt_u
              local.set $5
            end ;; $if_4
            block $block_2
              global.get $18
              i32.eqz
              if $if_5
                local.get $5
                br_if $block_2
                local.get $0
                i32.load offset=32
                local.get $2
                i32.lt_u
                local.tee $5
                br_if $block_2
              end ;; $if_5
              local.get $6
              i32.const 1
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_6
                local.get $0
                local.get $2
                call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Has
                local.set $3
                i32.const 1
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
                local.get $3
                local.set $5
              end ;; $if_6
              global.get $18
              i32.eqz
              if $if_7
                local.get $5
                i32.const 1
                i32.and
                i32.eqz
                local.tee $5
                br_if $block_2
              end ;; $if_7
              local.get $6
              i32.const 2
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_8
                local.get $0
                local.get $2
                local.get $7
                call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRecursive
                i32.const 2
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_8
            end ;; $block_2
            global.get $18
            i32.eqz
            if $if_9
              local.get $1
              i32.const 4
              i32.add
              local.set $1
              br $loop
            end ;; $if_9
          end ;; $loop
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_10
          return
        end ;; $if_10
      end ;; $block_0
      local.get $6
      i32.const 3
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_11
        call $runtime.nilPanic
        i32.const 3
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_11
      global.get $18
      i32.eqz
      if $if_12
        unreachable
      end ;; $if_12
      return
    end ;; $block
    local.set $3
    global.get $19
    i32.load
    local.get $3
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $7
    i32.store offset=20
    global.get $19
    global.get $19
    i32.load
    i32.const 24
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.isReserved (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      local.get $2
      local.get $0
      i32.eqz
      global.get $18
      select
      local.set $2
      block $block_0
        global.get $18
        i32.eqz
        if $if_1
          local.get $2
          br_if $block_0
          local.get $0
          i32.load offset=44
          local.get $1
          i32.eq
          local.set $2
        end ;; $if_1
        block $block_1
          block $block_2
            block $block_3
              global.get $18
              i32.eqz
              if $if_2
                local.get $2
                br_if $block_3
                local.get $0
                i32.load offset=40
                local.get $1
                i32.eq
                local.set $2
              end ;; $if_2
              block $block_4
                global.get $18
                i32.eqz
                if $if_3
                  local.get $2
                  br_if $block_4
                  local.get $0
                  i32.load offset=48
                  local.get $1
                  i32.eq
                  local.set $2
                end ;; $if_3
                block $block_5
                  global.get $18
                  i32.eqz
                  if $if_4
                    local.get $2
                    br_if $block_5
                    local.get $0
                    i32.load offset=52
                    local.get $1
                    i32.eq
                    local.set $2
                  end ;; $if_4
                  block $block_6
                    global.get $18
                    i32.eqz
                    if $if_5
                      local.get $2
                      br_if $block_6
                      local.get $0
                      i32.load offset=56
                      local.get $1
                      i32.eq
                      local.set $2
                    end ;; $if_5
                    block $block_7
                      global.get $18
                      i32.eqz
                      if $if_6
                        local.get $2
                        br_if $block_7
                        local.get $0
                        i32.load offset=60
                        local.get $1
                        i32.eq
                        local.set $2
                      end ;; $if_6
                      block $block_8
                        global.get $18
                        i32.eqz
                        if $if_7
                          local.get $2
                          br_if $block_8
                          local.get $0
                          i32.load offset=64
                          local.get $1
                          i32.eq
                          local.set $2
                        end ;; $if_7
                        block $block_9
                          global.get $18
                          i32.eqz
                          if $if_8
                            local.get $2
                            br_if $block_9
                            local.get $0
                            i32.load offset=68
                            local.get $1
                            i32.eq
                            local.set $2
                          end ;; $if_8
                          block $block_10
                            global.get $18
                            i32.eqz
                            if $if_9
                              local.get $2
                              br_if $block_10
                              local.get $0
                              i32.load offset=72
                              local.get $1
                              i32.ne
                              local.set $2
                            end ;; $if_9
                            global.get $18
                            i32.const 1
                            local.get $2
                            select
                            if $if_10
                              local.get $3
                              i32.const 0
                              global.get $18
                              select
                              i32.eqz
                              if $if_11
                                i32.const 66230
                                i32.const 14
                                call $runtime.printstring
                                i32.const 0
                                global.get $18
                                i32.const 1
                                i32.eq
                                br_if $block
                                drop
                              end ;; $if_11
                              global.get $18
                              i32.eqz
                              br_if $block_2
                            end ;; $if_10
                            global.get $18
                            i32.const 1
                            local.get $2
                            local.get $1
                            i32.const 66844
                            i32.ne
                            global.get $18
                            select
                            select
                            if $if_12
                              local.get $3
                              i32.const 1
                              i32.eq
                              i32.const 1
                              global.get $18
                              select
                              if $if_13
                                i32.const 66244
                                i32.const 11
                                call $runtime.printstring
                                i32.const 1
                                global.get $18
                                i32.const 1
                                i32.eq
                                br_if $block
                                drop
                              end ;; $if_13
                              global.get $18
                              i32.eqz
                              br_if $block_2
                            end ;; $if_12
                            global.get $18
                            i32.eqz
                            if $if_14
                              local.get $0
                              local.get $1
                              i32.eq
                              br_if $block_1
                              i32.const 66844
                              i32.load
                              local.tee $2
                              i32.eqz
                              br_if $block_0
                              local.get $1
                              local.get $2
                              i32.ge_u
                              if $if_15
                                i32.const 66844
                                i32.load
                                local.tee $2
                                i32.eqz
                                br_if $block_0
                                local.get $2
                                i32.const 368
                                i32.add
                                local.get $1
                                i32.ge_u
                                br_if $block_1
                              end ;; $if_15
                              local.get $0
                              i32.load
                              local.get $1
                              i32.eq
                              br_if $block_1
                              local.get $1
                              local.get $0
                              i32.load offset=44
                              i32.ne
                              br_if $block_1
                            end ;; $if_14
                            local.get $3
                            i32.const 2
                            i32.eq
                            i32.const 1
                            global.get $18
                            select
                            if $if_16
                              i32.const 66255
                              i32.const 10
                              call $runtime.printstring
                              i32.const 2
                              global.get $18
                              i32.const 1
                              i32.eq
                              br_if $block
                              drop
                            end ;; $if_16
                            global.get $18
                            i32.eqz
                            br_if $block_2
                          end ;; $block_10
                          local.get $3
                          i32.const 3
                          i32.eq
                          i32.const 1
                          global.get $18
                          select
                          if $if_17
                            i32.const 66223
                            i32.const 7
                            call $runtime.printstring
                            i32.const 3
                            global.get $18
                            i32.const 1
                            i32.eq
                            br_if $block
                            drop
                          end ;; $if_17
                          global.get $18
                          i32.eqz
                          br_if $block_2
                        end ;; $block_9
                        local.get $3
                        i32.const 4
                        i32.eq
                        i32.const 1
                        global.get $18
                        select
                        if $if_18
                          i32.const 66213
                          i32.const 10
                          call $runtime.printstring
                          i32.const 4
                          global.get $18
                          i32.const 1
                          i32.eq
                          br_if $block
                          drop
                        end ;; $if_18
                        global.get $18
                        i32.eqz
                        br_if $block_2
                      end ;; $block_8
                      local.get $3
                      i32.const 5
                      i32.eq
                      i32.const 1
                      global.get $18
                      select
                      if $if_19
                        i32.const 66201
                        i32.const 12
                        call $runtime.printstring
                        i32.const 5
                        global.get $18
                        i32.const 1
                        i32.eq
                        br_if $block
                        drop
                      end ;; $if_19
                      global.get $18
                      i32.eqz
                      br_if $block_2
                    end ;; $block_7
                    local.get $3
                    i32.const 6
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_20
                      i32.const 66194
                      i32.const 7
                      call $runtime.printstring
                      i32.const 6
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_20
                    global.get $18
                    i32.eqz
                    br_if $block_2
                  end ;; $block_6
                  local.get $3
                  i32.const 7
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_21
                    i32.const 66185
                    i32.const 9
                    call $runtime.printstring
                    i32.const 7
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_21
                  global.get $18
                  i32.eqz
                  br_if $block_2
                end ;; $block_5
                local.get $3
                i32.const 8
                i32.eq
                i32.const 1
                global.get $18
                select
                if $if_22
                  i32.const 66174
                  i32.const 11
                  call $runtime.printstring
                  i32.const 8
                  global.get $18
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_22
                global.get $18
                i32.eqz
                br_if $block_2
              end ;; $block_4
              local.get $3
              i32.const 9
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_23
                i32.const 66164
                i32.const 10
                call $runtime.printstring
                i32.const 9
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_23
              global.get $18
              i32.eqz
              br_if $block_2
            end ;; $block_3
            local.get $3
            i32.const 10
            i32.eq
            i32.const 1
            global.get $18
            select
            if $if_24
              i32.const 66156
              i32.const 8
              call $runtime.printstring
              i32.const 10
              global.get $18
              i32.const 1
              i32.eq
              br_if $block
              drop
            end ;; $if_24
          end ;; $block_2
          local.get $3
          i32.const 11
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_25
            call $runtime.printnl
            i32.const 11
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_25
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_26
          return
        end ;; $if_26
      end ;; $block_0
      local.get $3
      i32.const 12
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_27
        call $runtime.nilPanic
        i32.const 12
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_27
      global.get $18
      i32.eqz
      if $if_28
        unreachable
      end ;; $if_28
      return
    end ;; $block
    local.set $3
    global.get $19
    i32.load
    local.get $3
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoot (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $1
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $3
      end ;; $if_0
      block $block_0
        block $block_1
          global.get $18
          i32.const 1
          local.get $2
          local.get $1
          i32.eqz
          global.get $18
          select
          select
          i32.eqz
          br_if $block_1
          local.get $3
          i32.const 0
          global.get $18
          select
          i32.eqz
          if $if_1
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc.gc_rparen_.isReserved
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_1
          global.get $18
          i32.eqz
          if $if_2
            local.get $0
            i32.eqz
            br_if $block_0
            local.get $1
            i32.const 8
            i32.sub
            local.tee $1
            local.get $0
            i32.load offset=28
            i32.lt_u
            br_if $block_1
            local.get $0
            i32.load offset=32
            local.get $1
            i32.lt_u
            br_if $block_1
          end ;; $if_2
          local.get $3
          i32.const 1
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_3
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Has
            local.set $2
            i32.const 1
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $2
            local.set $0
          end ;; $if_3
          global.get $18
          i32.eqz
          if $if_4
            local.get $0
            i32.const 1
            i32.and
            i32.eqz
            br_if $block_1
            local.get $1
            i32.eqz
            br_if $block_0
            local.get $1
            i32.const 1
            i32.store
          end ;; $if_4
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_5
          return
        end ;; $if_5
      end ;; $block_0
      local.get $3
      i32.const 2
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_6
        call $runtime.nilPanic
        i32.const 2
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_6
      global.get $18
      i32.eqz
      if $if_7
        unreachable
      end ;; $if_7
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
    i32.load
    local.tee $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    global.get $19
    global.get $19
    i32.load
    i32.const 8
    i32.add
    i32.store
    )
  
  (func $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoots (type $6)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (local $3 i32)
    (local $4 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      block $block_0
        global.get $18
        i32.eqz
        if $if_1
          local.get $1
          i32.eqz
          br_if $block_0
          local.get $1
          local.get $2
          i32.ge_u
          local.tee $3
          br_if $block_0
        end ;; $if_1
        loop $loop
          global.get $18
          i32.eqz
          if $if_2
            local.get $1
            local.get $2
            i32.ge_u
            br_if $block_0
            local.get $1
            i32.load
            local.set $3
          end ;; $if_2
          local.get $4
          i32.const 0
          global.get $18
          select
          i32.eqz
          if $if_3
            local.get $0
            local.get $3
            call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoot
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_3
          global.get $18
          i32.eqz
          if $if_4
            local.get $1
            i32.const 4
            i32.add
            local.set $1
            br $loop
          end ;; $if_4
        end ;; $loop
      end ;; $block_0
      return
    end ;; $block
    local.set $4
    global.get $19
    i32.load
    local.get $4
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 16
    i32.add
    i32.store
    )
  
  (func $runtime.gcMarkTask (type $2)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get $19
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
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        i32.const 66840
        i32.load
        i32.eqz
        local.set $3
      end ;; $if_1
      block $block_0
        global.get $18
        i32.eqz
        if $if_2
          local.get $3
          br_if $block_0
          i32.const 66868
          i32.load
          local.set $3
        end ;; $if_2
        local.get $2
        i32.const 0
        global.get $18
        select
        i32.eqz
        if $if_3
          i32.const 66522
          i32.const 10
          call $runtime.printstring
          i32.const 0
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_3
        local.get $2
        i32.const 1
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_4
          call $runtime.printspace
          i32.const 1
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_4
        local.get $2
        i32.const 2
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_5
          local.get $3
          call $runtime.printuint32
          i32.const 2
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_5
        local.get $2
        i32.const 3
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_6
          call $runtime.printspace
          i32.const 3
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_6
        local.get $2
        i32.const 4
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_7
          local.get $0
          call $runtime.printuint32
          i32.const 4
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_7
        local.get $2
        i32.const 5
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_8
          call $runtime.printspace
          i32.const 5
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_8
        local.get $2
        i32.const 6
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_9
          local.get $1
          call $runtime.printuint32
          i32.const 6
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_9
        local.get $2
        i32.const 7
        i32.eq
        i32.const 1
        global.get $18
        select
        if $if_10
          call $runtime.printnl
          i32.const 7
          global.get $18
          i32.const 1
          i32.eq
          br_if $block
          drop
        end ;; $if_10
        local.get $0
        local.get $1
        i32.eqz
        global.get $18
        select
        local.set $0
        block $block_1
          global.get $18
          i32.eqz
          if $if_11
            local.get $0
            br_if $block_1
            i32.const 66844
            i32.load
            local.set $0
          end ;; $if_11
          local.get $2
          i32.const 8
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_12
            local.get $0
            local.get $1
            call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoot
            i32.const 8
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_12
        end ;; $block_1
        global.get $18
        i32.eqz
        if $if_13
          return
        end ;; $if_13
      end ;; $block_0
      local.get $2
      i32.const 9
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_14
        call $runtime.nilPanic
        i32.const 9
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_14
      global.get $18
      i32.eqz
      if $if_15
        unreachable
      end ;; $if_15
      return
    end ;; $block
    local.set $2
    global.get $19
    i32.load
    local.get $2
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    global.get $19
    global.get $19
    i32.load
    i32.const 12
    i32.add
    i32.store
    )
  
  (func $main.main$1 (type $0)
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
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 40
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $3
      local.get $1
      i32.load offset=12
      local.set $5
      local.get $1
      i32.load offset=16
      local.set $6
      local.get $1
      i32.load offset=20
      local.set $7
      local.get $1
      i32.load offset=24
      local.set $8
      local.get $1
      i32.load offset=28
      local.set $9
      local.get $1
      i32.load offset=32
      local.set $10
      local.get $1
      i32.load offset=36
      local.set $11
      local.get $1
      i32.load offset=8
      local.set $2
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $4
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 48
        i32.sub
        local.tee $3
        global.set $17
        local.get $3
        i32.const 28
        i32.add
        local.tee $2
        i64.const 0
        i64.store align=4
        local.get $3
        i32.const 12
        i32.add
        local.tee $6
        i64.const 0
        i64.store align=4
        i32.const 66740
        i32.load
        local.set $5
        i32.const 66740
        local.get $3
        i32.store
        local.get $3
        i64.const 0
        i64.store offset=36 align=4
        local.get $3
        i64.const 0
        i64.store offset=20 align=4
        local.get $3
        i64.const 9
        i64.store offset=4 align=4
        local.get $3
        local.get $5
        i32.store
        local.get $0
        i32.load
        local.set $7
        local.get $3
        i32.const 8
        i32.add
        local.set $5
      end ;; $if_1
      local.get $4
      i32.const 0
      global.get $18
      select
      i32.eqz
      if $if_2
        i32.const 12
        call $runtime.alloc
        local.set $1
        i32.const 0
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $0
      end ;; $if_2
      global.get $18
      i32.eqz
      if $if_3
        local.get $5
        local.get $0
        i32.store
        local.get $2
        local.get $0
        i32.store
        i32.const 24000
        local.set $5
      end ;; $if_3
      local.get $4
      i32.const 1
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_4
        i32.const 24000
        call $runtime.alloc
        local.set $1
        i32.const 1
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
        local.get $1
        local.set $2
      end ;; $if_4
      global.get $18
      i32.eqz
      if $if_5
        local.get $0
        i64.const 103079215128000
        i64.store offset=4 align=4
        local.get $0
        local.get $2
        i32.store
        local.get $6
        local.get $2
        i32.store
        local.get $3
        i32.const 16
        i32.add
        local.set $6
        local.get $3
        i32.const 20
        i32.add
        local.set $8
        local.get $3
        i32.const 24
        i32.add
        local.set $9
        local.get $3
        i32.const 36
        i32.add
        local.set $10
        local.get $3
        i32.const 32
        i32.add
        local.set $11
        local.get $3
        i32.const 40
        i32.add
        local.set $3
      end ;; $if_5
      loop $loop
        block $block_0
          global.get $18
          i32.eqz
          if $if_6
            local.get $6
            local.get $2
            i32.store
            local.get $5
            i32.eqz
            br_if $block_0
            local.get $2
            i32.const 10
            i32.store8
            local.get $8
            local.get $0
            i32.load
            local.tee $2
            i32.store
            local.get $0
            i32.load offset=4
            i32.const 1
            i32.le_u
            br_if $block_0
            local.get $2
            local.get $2
            i32.load8_u offset=1
            i32.const 1
            i32.add
            i32.store8 offset=1
            local.get $9
            local.get $0
            i32.load
            local.tee $2
            i32.store
            local.get $10
            local.get $2
            i32.store
            local.get $11
            local.get $2
            i32.store
            local.get $0
            i32.load offset=4
            i32.eqz
            br_if $block_0
          end ;; $if_6
          local.get $4
          i32.const 2
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_7
            i32.const 66549
            i32.const 9
            call $runtime.printstring
            i32.const 2
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_7
          local.get $4
          i32.const 3
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_8
            call $runtime.printspace
            i32.const 3
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_8
          local.get $4
          i32.const 4
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_9
            local.get $0
            call $runtime.printuint32
            i32.const 4
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_9
          local.get $4
          i32.const 5
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_10
            call $runtime.printspace
            i32.const 5
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_10
          local.get $4
          i32.const 6
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_11
            local.get $2
            call $runtime.printuint32
            i32.const 6
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_11
          local.get $4
          i32.const 7
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_12
            call $runtime.printnl
            i32.const 7
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_12
          local.get $4
          i32.const 8
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_13
            call $time.Sleep
            i32.const 8
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_13
          global.get $18
          i32.eqz
          if $if_14
            local.get $3
            local.get $7
            i32.load
            local.tee $2
            i32.store
            local.get $7
            i32.load offset=4
            i32.eqz
            br_if $block_0
            local.get $2
            local.get $2
            i32.load8_u
            i32.const 1
            i32.add
            i32.store8
            local.get $0
            i32.load
            local.set $2
            local.get $0
            i32.load offset=4
            local.set $5
            br $loop
          end ;; $if_14
        end ;; $block_0
      end ;; $loop
      local.get $4
      i32.const 9
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_15
        call $runtime.lookupPanic
        i32.const 9
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_15
      global.get $18
      i32.eqz
      if $if_16
        unreachable
      end ;; $if_16
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $1
    local.get $5
    i32.store offset=12
    local.get $1
    local.get $6
    i32.store offset=16
    local.get $1
    local.get $7
    i32.store offset=20
    local.get $1
    local.get $8
    i32.store offset=24
    local.get $1
    local.get $9
    i32.store offset=28
    local.get $1
    local.get $10
    i32.store offset=32
    local.get $1
    local.get $11
    i32.store offset=36
    global.get $19
    global.get $19
    i32.load
    i32.const 40
    i32.add
    i32.store
    )
  
  (func $main.main$2 (type $1)
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
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (local $16 i32)
    (local $17 i32)
    (local $18 i32)
    (local $19 i32)
    (local $20 i32)
    (local $21 i32)
    (local $22 i32)
    (local $23 i32)
    (local $24 i32)
    (local $25 i32)
    (local $26 i32)
    (local $27 i32)
    (local $28 i32)
    (local $29 i32)
    (local $30 i32)
    (local $31 i32)
    (local $32 i32)
    (local $33 i32)
    (local $34 i32)
    (local $35 i32)
    (local $36 i32)
    (local $37 i32)
    (local $38 i32)
    (local $39 i32)
    (local $40 i32)
    (local $41 i32)
    (local $42 i32)
    (local $43 i32)
    (local $44 i32)
    (local $45 i32)
    (local $46 i64)
    (local $47 i64)
    (local $48 i64)
    (local $49 i64)
    (local $50 i64)
    global.get $18
    i32.const 2
    i32.eq
    if $if
      global.get $19
      global.get $19
      i32.load
      i32.const 216
      i32.sub
      i32.store
      global.get $19
      i32.load
      local.tee $1
      i32.load
      local.set $0
      local.get $1
      i32.load offset=4
      local.set $3
      local.get $1
      i32.load offset=12
      local.set $5
      local.get $1
      i64.load offset=16 align=4
      local.set $46
      local.get $1
      i32.load offset=24
      local.set $6
      local.get $1
      i32.load offset=28
      local.set $7
      local.get $1
      i32.load offset=32
      local.set $8
      local.get $1
      i32.load offset=36
      local.set $9
      local.get $1
      i64.load offset=40 align=4
      local.set $47
      local.get $1
      i64.load offset=48 align=4
      local.set $48
      local.get $1
      i32.load offset=56
      local.set $10
      local.get $1
      i32.load offset=60
      local.set $11
      local.get $1
      i64.load offset=64 align=4
      local.set $49
      local.get $1
      i32.load offset=72
      local.set $12
      local.get $1
      i32.load offset=76
      local.set $13
      local.get $1
      i32.load offset=80
      local.set $14
      local.get $1
      i32.load offset=84
      local.set $15
      local.get $1
      i32.load offset=88
      local.set $16
      local.get $1
      i32.load offset=92
      local.set $17
      local.get $1
      i32.load offset=96
      local.set $18
      local.get $1
      i32.load offset=100
      local.set $19
      local.get $1
      i32.load offset=104
      local.set $20
      local.get $1
      i32.load offset=108
      local.set $21
      local.get $1
      i32.load offset=112
      local.set $22
      local.get $1
      i32.load offset=116
      local.set $23
      local.get $1
      i32.load offset=120
      local.set $24
      local.get $1
      i32.load offset=124
      local.set $25
      local.get $1
      i32.load offset=128
      local.set $26
      local.get $1
      i32.load offset=132
      local.set $27
      local.get $1
      i32.load offset=136
      local.set $28
      local.get $1
      i32.load offset=140
      local.set $29
      local.get $1
      i32.load offset=144
      local.set $30
      local.get $1
      i32.load offset=148
      local.set $31
      local.get $1
      i32.load offset=152
      local.set $32
      local.get $1
      i32.load offset=156
      local.set $33
      local.get $1
      i32.load offset=160
      local.set $34
      local.get $1
      i32.load offset=164
      local.set $35
      local.get $1
      i32.load offset=168
      local.set $36
      local.get $1
      i32.load offset=172
      local.set $37
      local.get $1
      i32.load offset=176
      local.set $38
      local.get $1
      i32.load offset=180
      local.set $39
      local.get $1
      i32.load offset=184
      local.set $40
      local.get $1
      i32.load offset=188
      local.set $41
      local.get $1
      i32.load offset=192
      local.set $42
      local.get $1
      i32.load offset=196
      local.set $43
      local.get $1
      i32.load offset=200
      local.set $44
      local.get $1
      i32.load offset=204
      local.set $45
      local.get $1
      i64.load offset=208 align=4
      local.set $50
      local.get $1
      i32.load offset=8
      local.set $4
    end ;; $if
    block $block (result i32)
      global.get $18
      i32.const 2
      i32.eq
      if $if_0
        global.get $19
        global.get $19
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get $19
        i32.load
        i32.load
        local.set $2
      end ;; $if_0
      global.get $18
      i32.eqz
      if $if_1
        global.get $17
        i32.const 272
        i32.sub
        local.tee $3
        global.set $17
        local.get $3
        i32.const 0
        i32.store offset=264
        local.get $3
        i64.const 0
        i64.store offset=256
        local.get $3
        i64.const 0
        i64.store offset=248
        local.get $3
        i64.const 0
        i64.store offset=240
        local.get $3
        i64.const 0
        i64.store offset=232
        local.get $3
        i64.const 0
        i64.store offset=224
        local.get $3
        i64.const 0
        i64.store offset=216
        local.get $3
        i64.const 0
        i64.store offset=208
        local.get $3
        i64.const 0
        i64.store offset=200
        local.get $3
        i64.const 0
        i64.store offset=192
        local.get $3
        i64.const 0
        i64.store offset=184
        local.get $3
        i64.const 0
        i64.store offset=176
        local.get $3
        i64.const 0
        i64.store offset=168
        local.get $3
        i64.const 0
        i64.store offset=160
        local.get $3
        i64.const 0
        i64.store offset=152
        local.get $3
        i64.const 0
        i64.store offset=144
        local.get $3
        i64.const 0
        i64.store offset=136
        local.get $3
        i64.const 0
        i64.store offset=128
        local.get $3
        i64.const 0
        i64.store offset=120
        local.get $3
        i64.const 0
        i64.store offset=112
        local.get $3
        i64.const 167503724544
        i64.store offset=104
        local.get $3
        i32.const 244
        i32.add
        local.get $3
        i32.const 96
        i32.add
        i32.store
        local.get $3
        i32.const 204
        i32.add
        local.get $3
        i32.const 96
        i32.add
        local.tee $4
        i32.store
        local.get $3
        i32.const 66740
        i32.load
        i32.store offset=104
        i32.const 66740
        local.get $3
        i32.const 104
        i32.add
        i32.store
        local.get $3
        i32.const 112
        i32.add
        local.set $13
        local.get $3
        i32.const 116
        i32.add
        local.set $14
        local.get $3
        i32.const 164
        i32.add
        local.set $15
        local.get $3
        i32.const 168
        i32.add
        local.set $16
        local.get $3
        i32.const 160
        i32.add
        local.set $17
        local.get $3
        i32.const 176
        i32.add
        local.set $18
        local.get $3
        i32.const 180
        i32.add
        local.set $19
        local.get $3
        i32.const 220
        i32.add
        local.set $20
        local.get $3
        i32.const 216
        i32.add
        local.set $21
        local.get $3
        i32.const 224
        i32.add
        local.set $22
        local.get $3
        i32.const 120
        i32.add
        local.set $23
        local.get $3
        i32.const 124
        i32.add
        local.set $24
        local.get $3
        i32.const 128
        i32.add
        local.set $25
        local.get $3
        i32.const 132
        i32.add
        local.set $26
        local.get $3
        i32.const 136
        i32.add
        local.set $27
        local.get $3
        i32.const 140
        i32.add
        local.set $28
        local.get $3
        i32.const 144
        i32.add
        local.set $29
        local.get $3
        i32.const 148
        i32.add
        local.set $30
        local.get $3
        i32.const 152
        i32.add
        local.set $31
        local.get $3
        i32.const 156
        i32.add
        local.set $32
        local.get $3
        i32.const 228
        i32.add
        local.set $33
        local.get $3
        i32.const 232
        i32.add
        local.set $34
        local.get $3
        i32.const 248
        i32.add
        local.set $35
        local.get $3
        i32.const 252
        i32.add
        local.set $36
        local.get $3
        i32.const 256
        i32.add
        local.set $37
        local.get $3
        i32.const 260
        i32.add
        local.set $38
        local.get $3
        i32.const 236
        i32.add
        local.set $39
        local.get $3
        i32.const 104
        i32.add
        local.tee $0
        i32.const 136
        i32.add
        local.set $40
        local.get $3
        i32.const 264
        i32.add
        local.set $41
        local.get $3
        i32.const 212
        i32.add
        local.set $42
        local.get $3
        i32.const 188
        i32.add
        local.set $43
        local.get $3
        i32.const 184
        i32.add
        local.set $44
        local.get $3
        i32.const 196
        i32.add
        local.set $45
        local.get $3
        i32.const 172
        i32.add
        local.set $11
      end ;; $if_1
      loop $loop
        block $block_0
          local.get $2
          i32.const 0
          global.get $18
          select
          i32.eqz
          if $if_2
            i32.const 2048
            call $runtime.alloc
            local.set $1
            i32.const 0
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
            local.get $1
            local.set $0
          end ;; $if_2
          global.get $18
          i32.eqz
          if $if_3
            local.get $13
            local.get $0
            i32.store
            local.get $3
            i32.const 80
            i32.add
            local.set $0
          end ;; $if_3
          local.get $2
          i32.const 1
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_4
            local.get $0
            call $time.Now
            i32.const 1
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_4
          global.get $18
          i32.eqz
          if $if_5
            local.get $3
            i64.load offset=80
            local.tee $46
            local.get $3
            i64.load offset=88
            local.tee $48
            call $_lparen_time.Time_rparen_.UnixNano
            local.set $50
            local.get $14
            i32.const 66844
            i32.load
            local.tee $5
            i32.store
            local.get $3
            i32.const -64
            i32.sub
            local.set $0
          end ;; $if_5
          local.get $2
          i32.const 2
          i32.eq
          i32.const 1
          global.get $18
          select
          if $if_6
            local.get $0
            call $time.Now
            i32.const 2
            global.get $18
            i32.const 1
            i32.eq
            br_if $block
            drop
          end ;; $if_6
          global.get $18
          i32.eqz
          if $if_7
            local.get $3
            i64.load offset=64
            local.get $3
            i64.load offset=72
            call $_lparen_time.Time_rparen_.UnixNano
            local.set $48
            local.get $5
            i32.eqz
            br_if $block_0
            local.get $5
            i32.const 88
            i32.add
            local.tee $0
            i64.load
            i64.const 1
            i64.add
            local.set $46
            local.get $0
            local.get $46
            i64.store
            i32.const 66740
            local.set $0
          end ;; $if_7
          loop $loop_0
            block $block_1
              global.get $18
              i32.eqz
              if $if_8
                local.get $15
                local.get $0
                i32.load
                local.tee $0
                i32.store
                local.get $16
                local.get $0
                i32.store
                local.get $17
                local.get $0
                i32.store
                local.get $0
                i32.eqz
                local.tee $4
                br_if $block_1
                local.get $0
                i32.load offset=4
                local.set $6
              end ;; $if_8
              local.get $2
              i32.const 3
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_9
                i32.const 66505
                i32.const 17
                call $runtime.printstring
                i32.const 3
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_9
              local.get $2
              i32.const 4
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_10
                call $runtime.printspace
                i32.const 4
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_10
              local.get $4
              local.get $0
              i32.const 8
              i32.add
              global.get $18
              select
              local.set $4
              local.get $2
              i32.const 5
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_11
                local.get $4
                call $runtime.printuint32
                i32.const 5
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_11
              local.get $2
              i32.const 6
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_12
                call $runtime.printspace
                i32.const 6
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_12
              global.get $18
              i32.eqz
              if $if_13
                local.get $6
                i32.const 2
                i32.shl
                local.tee $8
                local.get $4
                i32.add
                local.set $6
              end ;; $if_13
              local.get $2
              i32.const 7
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_14
                local.get $6
                call $runtime.printuint32
                i32.const 7
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_14
              local.get $2
              i32.const 8
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_15
                call $runtime.printnl
                i32.const 8
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_15
              global.get $18
              i32.eqz
              if $if_16
                local.get $11
                i32.const 66844
                i32.load
                local.tee $7
                i32.store
              end ;; $if_16
              local.get $2
              i32.const 9
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_17
                local.get $7
                local.get $4
                local.get $6
                call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoots
                i32.const 9
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_17
              global.get $18
              i32.eqz
              br_if $loop_0
            end ;; $block_1
          end ;; $loop_0
          local.get $0
          i32.const 66736
          global.get $18
          select
          local.set $0
          loop $loop_1
            block $block_2
              global.get $18
              i32.eqz
              if $if_18
                local.get $18
                local.get $0
                i32.store
                local.get $19
                local.get $0
                i32.load
                local.tee $4
                i32.store
                local.get $4
                i32.eqz
                local.tee $4
                br_if $block_2
                local.get $43
                i32.const 66736
                i32.load
                local.tee $4
                i32.store
                local.get $44
                local.get $4
                i32.store
                local.get $45
                local.get $0
                i32.load
                local.tee $6
                i32.store
                local.get $3
                i32.const 192
                i32.add
                local.tee $8
                local.get $6
                i32.store
              end ;; $if_18
              local.get $2
              i32.const 10
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_19
                local.get $4
                local.get $6
                call $runtime.gcMarkTask
                i32.const 10
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_19
              global.get $18
              i32.eqz
              if $if_20
                local.get $3
                i32.const 200
                i32.add
                local.get $0
                i32.load
                local.tee $0
                i32.store
                local.get $0
                i32.eqz
                local.tee $4
                br_if $block_0
                br $loop_1
              end ;; $if_20
            end ;; $block_2
          end ;; $loop_1
          global.get $18
          i32.eqz
          if $if_21
            local.get $3
            i64.const 0
            i64.store offset=96
          end ;; $if_21
          loop $loop_2
            block $block_3
              global.get $18
              i32.eqz
              if $if_22
                call $_lparen_*internal/task.Queue_rparen_.Empty
                i32.const 1
                i32.and
                i32.eqz
                local.set $0
              end ;; $if_22
              block $block_4
                global.get $18
                i32.eqz
                if $if_23
                  local.get $0
                  br_if $block_4
                  call $_lparen_*internal/task.Queue_rparen_.Empty
                  i32.const 1
                  i32.and
                  i32.eqz
                  local.tee $0
                  br_if $loop_2
                  i32.const 66732
                  local.get $3
                  i32.load offset=100
                  local.tee $0
                  i32.store
                  i32.const 66728
                  local.get $3
                  i32.load offset=96
                  local.tee $4
                  i32.store
                  local.get $20
                  local.get $0
                  i32.store
                  local.get $21
                  local.get $4
                  i32.store
                  local.get $22
                  i32.const 66844
                  i32.load
                  local.tee $0
                  i32.store
                  i32.const 66576
                  i32.load
                  i32.const -4
                  i32.and
                  local.set $8
                  i32.const 66572
                  i32.load
                  local.set $4
                end ;; $if_23
                local.get $2
                i32.const 11
                i32.eq
                i32.const 1
                global.get $18
                select
                if $if_24
                  local.get $0
                  local.get $4
                  local.get $8
                  call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRoots
                  i32.const 11
                  global.get $18
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_24
                local.get $0
                local.get $3
                i32.const 48
                i32.add
                global.get $18
                select
                local.set $0
                local.get $2
                i32.const 12
                i32.eq
                i32.const 1
                global.get $18
                select
                if $if_25
                  local.get $0
                  call $time.Now
                  i32.const 12
                  global.get $18
                  i32.const 1
                  i32.eq
                  br_if $block
                  drop
                end ;; $if_25
                global.get $18
                i32.eqz
                if $if_26
                  local.get $3
                  i64.load offset=48
                  local.get $3
                  i64.load offset=56
                  local.tee $47
                  call $_lparen_time.Time_rparen_.UnixNano
                  local.set $46
                  local.get $5
                  i32.const 360
                  i32.add
                  i64.const 0
                  i64.store
                  local.get $5
                  i32.const 352
                  i32.add
                  i64.const 0
                  i64.store
                  local.get $5
                  i32.load offset=8
                  i32.const 3
                  i32.shl
                  local.tee $0
                  local.get $5
                  i32.load
                  local.tee $7
                  i32.add
                  local.set $8
                  br $block_3
                end ;; $if_26
              end ;; $block_4
              global.get $18
              i32.eqz
              if $if_27
                local.get $3
                i32.const 208
                i32.add
                local.tee $4
                call $_lparen_*internal/task.Queue_rparen_.Pop
                local.tee $0
                i32.store
                local.get $42
                local.get $0
                i32.store
              end ;; $if_27
              local.get $2
              i32.const 13
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_28
                i32.const 66728
                local.get $0
                call $runtime.gcMarkTask
                i32.const 13
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_28
              local.get $4
              local.get $3
              i32.const 96
              i32.add
              global.get $18
              select
              local.set $4
              local.get $2
              i32.const 14
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_29
                local.get $4
                local.get $0
                call $_lparen_*internal/task.Queue_rparen_.Push
                i32.const 14
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_29
              global.get $18
              i32.eqz
              br_if $loop_2
            end ;; $block_3
          end ;; $loop_2
          loop $loop_3
            local.get $0
            local.get $7
            local.get $8
            i32.ge_u
            global.get $18
            select
            local.set $0
            block $block_5
              block $block_6
                global.get $18
                i32.eqz
                if $if_30
                  local.get $0
                  br_if $block_6
                  local.get $23
                  local.get $7
                  i32.store
                  local.get $24
                  local.get $7
                  i32.store
                  local.get $7
                  i32.load
                  local.tee $0
                  i32.eqz
                  local.tee $4
                  br_if $block_5
                  local.get $25
                  local.get $0
                  i32.store
                  local.get $26
                  local.get $0
                  i32.store
                  local.get $0
                  i32.load offset=4
                  local.set $4
                  local.get $4
                  local.get $0
                  i32.const 8
                  i32.add
                  local.tee $0
                  i32.add
                  local.set $6
                end ;; $if_30
                loop $loop_4
                  global.get $18
                  i32.eqz
                  if $if_31
                    local.get $0
                    local.get $6
                    i32.ge_u
                    local.tee $4
                    br_if $block_5
                    local.get $27
                    local.get $0
                    i32.store
                    local.get $28
                    local.get $0
                    i32.store
                    local.get $0
                    i32.load
                    i32.const 8
                    i32.sub
                    local.tee $4
                    local.get $5
                    i32.load offset=28
                    i32.lt_u
                    local.set $9
                  end ;; $if_31
                  block $block_7
                    global.get $18
                    i32.eqz
                    if $if_32
                      local.get $9
                      br_if $block_7
                      local.get $5
                      i32.load offset=32
                      local.get $4
                      i32.lt_u
                      local.tee $9
                      br_if $block_7
                    end ;; $if_32
                    local.get $2
                    i32.const 15
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_33
                      local.get $5
                      local.get $4
                      call $_lparen_*github.com/moontrade/nogc.PointerSet_rparen_.Has
                      local.set $1
                      i32.const 15
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                      local.get $1
                      local.set $9
                    end ;; $if_33
                    global.get $18
                    i32.eqz
                    if $if_34
                      local.get $9
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee $9
                      br_if $block_7
                    end ;; $if_34
                    local.get $2
                    i32.const 16
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_35
                      local.get $5
                      local.get $4
                      i32.const 0
                      call $_lparen_*github.com/moontrade/nogc.gc_rparen_.markRecursive
                      i32.const 16
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_35
                  end ;; $block_7
                  global.get $18
                  i32.eqz
                  if $if_36
                    local.get $0
                    i32.const 4
                    i32.add
                    local.set $0
                    br $loop_4
                  end ;; $if_36
                end ;; $loop_4
              end ;; $block_6
              global.get $18
              i32.eqz
              if $if_37
                local.get $46
                local.get $48
                i64.sub
                local.set $48
                local.get $3
                i32.const 32
                i32.add
                local.set $0
              end ;; $if_37
              local.get $2
              i32.const 17
              i32.eq
              i32.const 1
              global.get $18
              select
              if $if_38
                local.get $0
                call $time.Now
                i32.const 17
                global.get $18
                i32.const 1
                i32.eq
                br_if $block
                drop
              end ;; $if_38
              global.get $18
              i32.eqz
              if $if_39
                local.get $3
                i64.load offset=32
                local.get $3
                i64.load offset=40
                call $_lparen_time.Time_rparen_.UnixNano
                local.tee $47
                local.get $46
                i64.sub
                local.set $49
                i32.const -1
                local.set $10
                local.get $5
                i32.load offset=8
                i32.const 3
                i32.shl
                local.tee $0
                local.get $5
                i32.load
                local.tee $6
                i32.add
                local.set $12
                i32.const 0
                local.set $9
              end ;; $if_39
              loop $loop_5
                local.get $0
                local.get $6
                local.get $12
                i32.ge_u
                global.get $18
                select
                local.set $0
                block $block_8
                  block $block_9
                    global.get $18
                    i32.eqz
                    if $if_40
                      local.get $0
                      i32.eqz
                      if $if_41
                        local.get $29
                        local.get $6
                        i32.store
                        local.get $30
                        local.get $6
                        i32.store
                        local.get $6
                        i32.load
                        local.tee $4
                        i32.eqz
                        local.tee $0
                        br_if $block_8
                        local.get $31
                        local.get $4
                        i32.store
                        local.get $32
                        local.get $4
                        i32.store
                        local.get $4
                        i32.load
                        i32.eqz
                        local.tee $0
                        br_if $block_9
                        local.get $4
                        i32.const 0
                        i32.store
                        local.get $4
                        local.get $10
                        local.get $4
                        local.get $10
                        i32.lt_u
                        select
                        local.set $10
                        local.get $4
                        local.get $9
                        local.get $4
                        local.get $9
                        i32.gt_u
                        local.tee $0
                        select
                        local.set $9
                        br $block_8
                      end ;; $if_41
                      local.get $5
                      local.get $9
                      i32.store offset=32
                      local.get $5
                      local.get $10
                      i32.store offset=28
                      local.get $3
                      i32.const 16
                      i32.add
                      local.set $0
                    end ;; $if_40
                    local.get $2
                    i32.const 18
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_42
                      local.get $0
                      call $time.Now
                      i32.const 18
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_42
                    global.get $18
                    i32.eqz
                    if $if_43
                      local.get $3
                      i64.load offset=16
                      local.get $3
                      i64.load offset=24
                      call $_lparen_time.Time_rparen_.UnixNano
                      local.set $46
                      local.get $5
                      i32.const 328
                      i32.add
                      local.get $49
                      i64.store
                      local.get $5
                      i32.const 320
                      i32.add
                      local.get $48
                      i64.store
                      local.get $5
                      i32.const 336
                      i32.add
                      local.get $46
                      local.get $47
                      i64.sub
                      local.tee $46
                      i64.store
                      local.get $5
                      i32.const 152
                      i32.add
                      local.tee $0
                      i64.load
                      local.get $46
                      i64.add
                      local.set $47
                      local.get $0
                      local.get $47
                      i64.store
                      local.get $5
                      i32.const 144
                      i32.add
                      local.tee $0
                      i64.load
                      local.get $5
                      i64.load offset=360
                      i64.add
                      local.set $47
                      local.get $0
                      local.get $47
                      i64.store
                      local.get $5
                      i32.const 136
                      i32.add
                      local.tee $0
                      i64.load
                      local.get $5
                      i64.load offset=352
                      i64.add
                      local.set $47
                      local.get $0
                      local.get $47
                      i64.store
                      local.get $5
                      i32.const 344
                      i32.add
                      local.get $48
                      local.get $49
                      i64.add
                      local.get $46
                      i64.add
                      local.tee $46
                      i64.store
                      local.get $5
                      i32.const 288
                      i32.add
                      local.tee $0
                      i64.load
                      local.tee $48
                      local.get $46
                      i64.add
                      local.set $46
                      local.get $0
                      local.get $46
                      i64.store
                    end ;; $if_43
                    local.get $2
                    i32.const 19
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_44
                      local.get $3
                      call $time.Now
                      i32.const 19
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_44
                    global.get $18
                    i32.eqz
                    if $if_45
                      local.get $3
                      i64.load
                      local.get $3
                      i64.load offset=8
                      local.tee $48
                      call $_lparen_time.Time_rparen_.UnixNano
                      local.set $46
                    end ;; $if_45
                    local.get $2
                    i32.const 20
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_46
                      i32.const 66558
                      i32.const 7
                      call $runtime.printstring
                      i32.const 20
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_46
                    local.get $2
                    i32.const 21
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_47
                      call $runtime.printspace
                      i32.const 21
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_47
                    local.get $46
                    local.get $46
                    local.get $50
                    i64.sub
                    global.get $18
                    select
                    local.set $46
                    local.get $2
                    i32.const 22
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_48
                      local.get $46
                      call $runtime.printint64
                      i32.const 22
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_48
                    local.get $2
                    i32.const 23
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_49
                      call $runtime.printnl
                      i32.const 23
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_49
                    global.get $18
                    i32.eqz
                    if $if_50
                      local.get $41
                      i32.const 66844
                      i32.load
                      local.tee $0
                      i32.store
                      local.get $0
                      i32.eqz
                      local.tee $4
                      br_if $block_0
                    end ;; $if_50
                    local.get $2
                    i32.const 24
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_51
                      i32.const 66265
                      i32.const 8
                      call $runtime.printstring
                      i32.const 24
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_51
                    local.get $2
                    i32.const 25
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_52
                      call $runtime.printnl
                      i32.const 25
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_52
                    global.get $18
                    i32.eqz
                    if $if_53
                      local.get $0
                      i32.const 96
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_53
                    local.get $2
                    i32.const 26
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_54
                      i32.const 66273
                      i32.const 10
                      call $runtime.printstring
                      i32.const 26
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_54
                    local.get $2
                    i32.const 27
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_55
                      call $runtime.printspace
                      i32.const 27
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_55
                    local.get $2
                    i32.const 28
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_56
                      local.get $5
                      call $runtime.printuint32
                      i32.const 28
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_56
                    local.get $2
                    i32.const 29
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_57
                      call $runtime.printnl
                      i32.const 29
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_57
                    global.get $18
                    i32.eqz
                    if $if_58
                      local.get $0
                      i32.const 368
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_58
                    local.get $2
                    i32.const 30
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_59
                      i32.const 66283
                      i32.const 15
                      call $runtime.printstring
                      i32.const 30
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_59
                    local.get $2
                    i32.const 31
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_60
                      call $runtime.printspace
                      i32.const 31
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_60
                    local.get $2
                    i32.const 32
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_61
                      local.get $5
                      call $runtime.printuint32
                      i32.const 32
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_61
                    local.get $2
                    i32.const 33
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_62
                      call $runtime.printnl
                      i32.const 33
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_62
                    global.get $18
                    i32.eqz
                    if $if_63
                      local.get $0
                      i32.const 120
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_63
                    local.get $2
                    i32.const 34
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_64
                      i32.const 66298
                      i32.const 11
                      call $runtime.printstring
                      i32.const 34
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_64
                    local.get $2
                    i32.const 35
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_65
                      call $runtime.printspace
                      i32.const 35
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_65
                    local.get $2
                    i32.const 36
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_66
                      local.get $5
                      call $runtime.printuint32
                      i32.const 36
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_66
                    local.get $2
                    i32.const 37
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_67
                      call $runtime.printnl
                      i32.const 37
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_67
                    global.get $18
                    i32.eqz
                    if $if_68
                      local.get $0
                      i32.const 104
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_68
                    local.get $2
                    i32.const 38
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_69
                      i32.const 66309
                      i32.const 12
                      call $runtime.printstring
                      i32.const 38
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_69
                    local.get $2
                    i32.const 39
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_70
                      call $runtime.printspace
                      i32.const 39
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_70
                    local.get $2
                    i32.const 40
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_71
                      local.get $5
                      call $runtime.printuint32
                      i32.const 40
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_71
                    local.get $2
                    i32.const 41
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_72
                      call $runtime.printnl
                      i32.const 41
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_72
                    global.get $18
                    i32.eqz
                    if $if_73
                      local.get $0
                      i32.const 128
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_73
                    local.get $2
                    i32.const 42
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_74
                      i32.const 66321
                      i32.const 15
                      call $runtime.printstring
                      i32.const 42
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_74
                    local.get $2
                    i32.const 43
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_75
                      call $runtime.printspace
                      i32.const 43
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_75
                    local.get $2
                    i32.const 44
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_76
                      local.get $5
                      call $runtime.printuint32
                      i32.const 44
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_76
                    local.get $2
                    i32.const 45
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_77
                      call $runtime.printnl
                      i32.const 45
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_77
                    global.get $18
                    i32.eqz
                    if $if_78
                      local.get $0
                      i32.const 144
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_78
                    local.get $2
                    i32.const 46
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_79
                      i32.const 66336
                      i32.const 15
                      call $runtime.printstring
                      i32.const 46
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_79
                    local.get $2
                    i32.const 47
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_80
                      call $runtime.printspace
                      i32.const 47
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_80
                    local.get $2
                    i32.const 48
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_81
                      local.get $5
                      call $runtime.printuint32
                      i32.const 48
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_81
                    local.get $2
                    i32.const 49
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_82
                      call $runtime.printnl
                      i32.const 49
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_82
                    global.get $18
                    i32.eqz
                    if $if_83
                      local.get $0
                      i32.const 112
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_83
                    local.get $2
                    i32.const 50
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_84
                      i32.const 66351
                      i32.const 15
                      call $runtime.printstring
                      i32.const 50
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_84
                    local.get $2
                    i32.const 51
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_85
                      call $runtime.printspace
                      i32.const 51
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_85
                    local.get $2
                    i32.const 52
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_86
                      local.get $5
                      call $runtime.printuint32
                      i32.const 52
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_86
                    local.get $2
                    i32.const 53
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_87
                      call $runtime.printnl
                      i32.const 53
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_87
                    global.get $18
                    i32.eqz
                    if $if_88
                      local.get $0
                      i32.const 352
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_88
                    local.get $2
                    i32.const 54
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_89
                      i32.const 66366
                      i32.const 15
                      call $runtime.printstring
                      i32.const 54
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_89
                    local.get $2
                    i32.const 55
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_90
                      call $runtime.printspace
                      i32.const 55
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_90
                    local.get $2
                    i32.const 56
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_91
                      local.get $5
                      call $runtime.printuint32
                      i32.const 56
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_91
                    local.get $2
                    i32.const 57
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_92
                      call $runtime.printnl
                      i32.const 57
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_92
                    global.get $18
                    i32.eqz
                    if $if_93
                      local.get $0
                      i32.const 360
                      i32.add
                      local.tee $4
                      i32.load
                      local.set $5
                    end ;; $if_93
                    local.get $2
                    i32.const 58
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_94
                      i32.const 66381
                      i32.const 19
                      call $runtime.printstring
                      i32.const 58
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_94
                    local.get $2
                    i32.const 59
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_95
                      call $runtime.printspace
                      i32.const 59
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_95
                    local.get $2
                    i32.const 60
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_96
                      local.get $5
                      call $runtime.printuint32
                      i32.const 60
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_96
                    local.get $2
                    i32.const 61
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_97
                      call $runtime.printnl
                      i32.const 61
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_97
                    global.get $18
                    i32.eqz
                    if $if_98
                      local.get $0
                      i32.const 320
                      i32.add
                      local.tee $4
                      i64.load
                      local.set $46
                    end ;; $if_98
                    local.get $2
                    i32.const 62
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_99
                      i32.const 66400
                      i32.const 18
                      call $runtime.printstring
                      i32.const 62
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_99
                    local.get $2
                    i32.const 63
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_100
                      call $runtime.printspace
                      i32.const 63
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_100
                    local.get $46
                    local.get $46
                    i64.const 1000
                    i64.div_s
                    global.get $18
                    select
                    local.set $46
                    local.get $2
                    i32.const 64
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_101
                      local.get $46
                      call $runtime.printint64
                      i32.const 64
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_101
                    local.get $2
                    i32.const 65
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_102
                      call $runtime.printspace
                      i32.const 65
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_102
                    local.get $2
                    i32.const 66
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_103
                      i32.const 66470
                      i32.const 3
                      call $runtime.printstring
                      i32.const 66
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_103
                    local.get $2
                    i32.const 67
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_104
                      call $runtime.printnl
                      i32.const 67
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_104
                    global.get $18
                    i32.eqz
                    if $if_105
                      local.get $0
                      i32.const 328
                      i32.add
                      local.tee $4
                      i64.load
                      local.set $46
                    end ;; $if_105
                    local.get $2
                    i32.const 68
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_106
                      i32.const 66418
                      i32.const 18
                      call $runtime.printstring
                      i32.const 68
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_106
                    local.get $2
                    i32.const 69
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_107
                      call $runtime.printspace
                      i32.const 69
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_107
                    local.get $46
                    local.get $46
                    i64.const 1000
                    i64.div_s
                    global.get $18
                    select
                    local.set $46
                    local.get $2
                    i32.const 70
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_108
                      local.get $46
                      call $runtime.printint64
                      i32.const 70
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_108
                    local.get $2
                    i32.const 71
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_109
                      call $runtime.printspace
                      i32.const 71
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_109
                    local.get $2
                    i32.const 72
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_110
                      i32.const 66470
                      i32.const 3
                      call $runtime.printstring
                      i32.const 72
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_110
                    local.get $2
                    i32.const 73
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_111
                      call $runtime.printnl
                      i32.const 73
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_111
                    global.get $18
                    i32.eqz
                    if $if_112
                      local.get $0
                      i32.const 336
                      i32.add
                      local.tee $4
                      i64.load
                      local.set $46
                    end ;; $if_112
                    local.get $2
                    i32.const 74
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_113
                      i32.const 66436
                      i32.const 18
                      call $runtime.printstring
                      i32.const 74
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_113
                    local.get $2
                    i32.const 75
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_114
                      call $runtime.printspace
                      i32.const 75
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_114
                    local.get $46
                    local.get $46
                    i64.const 1000
                    i64.div_s
                    global.get $18
                    select
                    local.set $46
                    local.get $2
                    i32.const 76
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_115
                      local.get $46
                      call $runtime.printint64
                      i32.const 76
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_115
                    local.get $2
                    i32.const 77
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_116
                      call $runtime.printspace
                      i32.const 77
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_116
                    local.get $2
                    i32.const 78
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_117
                      i32.const 66470
                      i32.const 3
                      call $runtime.printstring
                      i32.const 78
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_117
                    local.get $2
                    i32.const 79
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_118
                      call $runtime.printnl
                      i32.const 79
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_118
                    global.get $18
                    i32.eqz
                    if $if_119
                      local.get $0
                      i32.const 344
                      i32.add
                      local.tee $0
                      i64.load
                      local.set $46
                    end ;; $if_119
                    local.get $2
                    i32.const 80
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_120
                      i32.const 66454
                      i32.const 16
                      call $runtime.printstring
                      i32.const 80
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_120
                    local.get $2
                    i32.const 81
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_121
                      call $runtime.printspace
                      i32.const 81
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_121
                    local.get $46
                    local.get $46
                    i64.const 1000
                    i64.div_s
                    global.get $18
                    select
                    local.set $46
                    local.get $2
                    i32.const 82
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_122
                      local.get $46
                      call $runtime.printint64
                      i32.const 82
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_122
                    local.get $2
                    i32.const 83
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_123
                      call $runtime.printspace
                      i32.const 83
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_123
                    local.get $2
                    i32.const 84
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_124
                      i32.const 66470
                      i32.const 3
                      call $runtime.printstring
                      i32.const 84
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_124
                    local.get $2
                    i32.const 85
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_125
                      call $runtime.printnl
                      i32.const 85
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_125
                    local.get $2
                    i32.const 86
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_126
                      call $time.Sleep
                      i32.const 86
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_126
                    global.get $18
                    i32.eqz
                    br_if $loop
                  end ;; $block_9
                  global.get $18
                  i32.eqz
                  if $if_127
                    local.get $5
                    local.get $5
                    i32.load offset=368
                    local.get $4
                    i32.load offset=4
                    local.tee $8
                    i32.sub
                    i32.store offset=368
                    local.get $4
                    i64.load32_u offset=4
                    local.set $46
                    local.get $5
                    local.get $5
                    i64.load offset=96
                    i64.const 1
                    i64.sub
                    i64.store offset=96
                    local.get $5
                    local.get $5
                    i64.load offset=352
                    i64.const 1
                    i64.add
                    i64.store offset=352
                    local.get $5
                    local.get $5
                    i64.load offset=360
                    local.get $46
                    i64.add
                    local.tee $46
                    i64.store offset=360
                    local.get $4
                    i32.load offset=4
                    local.set $0
                  end ;; $if_127
                  local.get $2
                  i32.const 87
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_128
                    i32.const 66144
                    i32.const 8
                    call $runtime.printstring
                    i32.const 87
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_128
                  local.get $2
                  i32.const 88
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_129
                    call $runtime.printspace
                    i32.const 88
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_129
                  local.get $2
                  i32.const 89
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_130
                    local.get $4
                    call $runtime.printuint32
                    i32.const 89
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_130
                  local.get $2
                  i32.const 90
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_131
                    call $runtime.printspace
                    i32.const 90
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_131
                  local.get $2
                  i32.const 91
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_132
                    i32.const 66152
                    i32.const 4
                    call $runtime.printstring
                    i32.const 91
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_132
                  local.get $2
                  i32.const 92
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_133
                    call $runtime.printspace
                    i32.const 92
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_133
                  local.get $2
                  i32.const 93
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_134
                    local.get $0
                    call $runtime.printuint32
                    i32.const 93
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_134
                  local.get $2
                  i32.const 94
                  i32.eq
                  i32.const 1
                  global.get $18
                  select
                  if $if_135
                    call $runtime.printnl
                    i32.const 94
                    global.get $18
                    i32.const 1
                    i32.eq
                    br_if $block
                    drop
                  end ;; $if_135
                  global.get $18
                  i32.eqz
                  if $if_136
                    local.get $5
                    i32.load offset=8
                    local.tee $0
                    i32.eqz
                    local.set $8
                  end ;; $if_136
                  block $block_10
                    i32.const 1
                    global.get $18
                    local.get $8
                    select
                    i32.eqz
                    if $if_137
                      local.get $4
                      i32.const 0
                      call $github.com/moontrade/nogc/hash.FNV32a
                      local.get $0
                      i32.rem_u
                      i32.const 3
                      i32.shl
                      local.get $5
                      i32.load
                      i32.add
                      local.tee $8
                      local.set $0
                      loop $loop_6
                        local.get $33
                        local.get $0
                        i32.store
                        local.get $34
                        local.get $0
                        i32.store
                        local.get $0
                        i32.eqz
                        br_if $block_0
                        local.get $0
                        i32.load
                        local.tee $7
                        i32.eqz
                        br_if $block_8
                        local.get $4
                        local.get $7
                        i32.eq
                        local.tee $7
                        br_if $block_10
                        local.get $0
                        i32.const 8
                        i32.add
                        local.tee $0
                        local.get $5
                        i32.load offset=4
                        i32.ge_u
                        if $if_138
                          local.get $5
                          i32.load
                          local.set $0
                        end ;; $if_138
                        local.get $0
                        local.get $8
                        i32.eq
                        local.tee $7
                        i32.eqz
                        br_if $loop_6
                      end ;; $loop_6
                      br $block_8
                    end ;; $if_137
                    local.get $2
                    i32.const 95
                    i32.eq
                    i32.const 1
                    global.get $18
                    select
                    if $if_139
                      call $runtime.divideByZeroPanic
                      i32.const 95
                      global.get $18
                      i32.const 1
                      i32.eq
                      br_if $block
                      drop
                    end ;; $if_139
                    global.get $18
                    i32.eqz
                    if $if_140
                      unreachable
                    end ;; $if_140
                  end ;; $block_10
                  global.get $18
                  i32.eqz
                  if $if_141
                    loop $loop_7
                      block $block_11
                        local.get $0
                        i32.const 8
                        i32.add
                        local.tee $4
                        local.get $5
                        i32.load offset=4
                        i32.ge_u
                        if $if_142
                          local.get $5
                          i32.load
                          local.tee $4
                          local.get $0
                          i32.eq
                          local.tee $8
                          br_if $block_11
                        end ;; $if_142
                        local.get $35
                        local.get $4
                        i32.store
                        local.get $36
                        local.get $4
                        i32.store
                        local.get $4
                        i32.eqz
                        br_if $block_0
                        local.get $4
                        i32.load
                        i32.eqz
                        local.tee $8
                        br_if $block_11
                        local.get $4
                        i32.load offset=4
                        local.tee $7
                        i32.const 0
                        i32.le_s
                        local.tee $8
                        br_if $block_11
                        local.get $4
                        local.get $7
                        i32.const 1
                        i32.sub
                        i32.store offset=4
                        local.get $37
                        local.get $0
                        i32.store
                        local.get $38
                        local.get $0
                        i32.store
                        local.get $0
                        local.get $4
                        i64.load align=4
                        local.tee $46
                        i64.store align=4
                        local.get $4
                        local.set $0
                        br $loop_7
                      end ;; $block_11
                    end ;; $loop_7
                    local.get $39
                    local.get $0
                    i32.store
                    local.get $40
                    local.get $0
                    i32.store
                    local.get $3
                    i64.const 0
                    i64.store offset=96
                    local.get $0
                    i64.const 0
                    i64.store align=4
                    local.get $5
                    local.get $5
                    i32.load offset=12
                    i32.const 1
                    i32.sub
                    local.tee $0
                    i32.store offset=12
                  end ;; $if_141
                end ;; $block_8
                global.get $18
                i32.eqz
                if $if_143
                  local.get $6
                  i32.const 8
                  i32.add
                  local.set $6
                  br $loop_5
                end ;; $if_143
              end ;; $loop_5
            end ;; $block_5
            global.get $18
            i32.eqz
            if $if_144
              local.get $7
              i32.const 8
              i32.add
              local.set $7
              br $loop_3
            end ;; $if_144
          end ;; $loop_3
        end ;; $block_0
      end ;; $loop
      local.get $2
      i32.const 96
      i32.eq
      i32.const 1
      global.get $18
      select
      if $if_145
        call $runtime.nilPanic
        i32.const 96
        global.get $18
        i32.const 1
        i32.eq
        br_if $block
        drop
      end ;; $if_145
      global.get $18
      i32.eqz
      if $if_146
        unreachable
      end ;; $if_146
      return
    end ;; $block
    local.set $1
    global.get $19
    i32.load
    local.get $1
    i32.store
    global.get $19
    global.get $19
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $19
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
    local.get $5
    i32.store offset=12
    local.get $1
    local.get $46
    i64.store offset=16 align=4
    local.get $1
    local.get $6
    i32.store offset=24
    local.get $1
    local.get $7
    i32.store offset=28
    local.get $1
    local.get $8
    i32.store offset=32
    local.get $1
    local.get $9
    i32.store offset=36
    local.get $1
    local.get $47
    i64.store offset=40 align=4
    local.get $1
    local.get $48
    i64.store offset=48 align=4
    local.get $1
    local.get $10
    i32.store offset=56
    local.get $1
    local.get $11
    i32.store offset=60
    local.get $1
    local.get $49
    i64.store offset=64 align=4
    local.get $1
    local.get $12
    i32.store offset=72
    local.get $1
    local.get $13
    i32.store offset=76
    local.get $1
    local.get $14
    i32.store offset=80
    local.get $1
    local.get $15
    i32.store offset=84
    local.get $1
    local.get $16
    i32.store offset=88
    local.get $1
    local.get $17
    i32.store offset=92
    local.get $1
    local.get $18
    i32.store offset=96
    local.get $1
    local.get $19
    i32.store offset=100
    local.get $1
    local.get $20
    i32.store offset=104
    local.get $1
    local.get $21
    i32.store offset=108
    local.get $1
    local.get $22
    i32.store offset=112
    local.get $1
    local.get $23
    i32.store offset=116
    local.get $1
    local.get $24
    i32.store offset=120
    local.get $1
    local.get $25
    i32.store offset=124
    local.get $1
    local.get $26
    i32.store offset=128
    local.get $1
    local.get $27
    i32.store offset=132
    local.get $1
    local.get $28
    i32.store offset=136
    local.get $1
    local.get $29
    i32.store offset=140
    local.get $1
    local.get $30
    i32.store offset=144
    local.get $1
    local.get $31
    i32.store offset=148
    local.get $1
    local.get $32
    i32.store offset=152
    local.get $1
    local.get $33
    i32.store offset=156
    local.get $1
    local.get $34
    i32.store offset=160
    local.get $1
    local.get $35
    i32.store offset=164
    local.get $1
    local.get $36
    i32.store offset=168
    local.get $1
    local.get $37
    i32.store offset=172
    local.get $1
    local.get $38
    i32.store offset=176
    local.get $1
    local.get $39
    i32.store offset=180
    local.get $1
    local.get $40
    i32.store offset=184
    local.get $1
    local.get $41
    i32.store offset=188
    local.get $1
    local.get $42
    i32.store offset=192
    local.get $1
    local.get $43
    i32.store offset=196
    local.get $1
    local.get $44
    i32.store offset=200
    local.get $1
    local.get $45
    i32.store offset=204
    local.get $1
    local.get $50
    i64.store offset=208 align=4
    global.get $19
    global.get $19
    i32.load
    i32.const 216
    i32.add
    i32.store
    )
  
  (func $tinygo_unwind (type $0)
    (param $0 i32)
    i32.const 66848
    i32.load8_u
    if $if
      call $asyncify_stop_rewind
      i32.const 66848
      i32.const 0
      i32.store8
    else
      local.get $0
      global.get $17
      i32.store offset=4
      local.get $0
      call $asyncify_start_unwind
    end ;; $if
    )
  
  (func $tinygo_launch (type $0)
    (param $0 i32)
    (local $1 i32)
    global.get $17
    local.set $1
    local.get $0
    i32.load offset=12
    global.set $17
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load
    call_indirect $15 (type $0)
    call $asyncify_stop_unwind
    local.get $1
    global.set $17
    )
  
  (func $tinygo_rewind (type $0)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    global.get $17
    local.set $1
    local.get $0
    i32.load offset=12
    global.set $17
    local.get $0
    i32.load offset=4
    local.set $2
    local.get $0
    i32.load
    local.set $3
    i32.const 66848
    i32.const 1
    i32.store8
    local.get $0
    i32.const 8
    i32.add
    call $asyncify_start_rewind
    local.get $2
    local.get $3
    call_indirect $15 (type $0)
    call $asyncify_stop_unwind
    local.get $1
    global.set $17
    )
  
  (func $memcpy (type $8)
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
  
  (func $memset (type $8)
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
    global.set $18
    local.get $0
    global.set $19
    global.get $19
    i32.load
    global.get $19
    i32.load offset=4
    i32.gt_u
    if $if
      unreachable
    end ;; $if
    )
  
  (func $asyncify_stop_unwind (type $1)
    i32.const 0
    global.set $18
    global.get $19
    i32.load
    global.get $19
    i32.load offset=4
    i32.gt_u
    if $if
      unreachable
    end ;; $if
    )
  
  (func $asyncify_start_rewind (type $0)
    (param $0 i32)
    i32.const 2
    global.set $18
    local.get $0
    global.set $19
    global.get $19
    i32.load
    global.get $19
    i32.load offset=4
    i32.gt_u
    if $if
      unreachable
    end ;; $if
    )
  
  (func $asyncify_stop_rewind (type $1)
    i32.const 0
    global.set $18
    global.get $19
    i32.load
    global.get $19
    i32.load offset=4
    i32.gt_u
    if $if
      unreachable
    end ;; $if
    )
  
  (func $asyncify_get_state (type $5)
    (result i32)
    global.get $18
    )
  
  (data $21 (i32.const 65536)
    "\00\01\1c\02\1d\0e\18\03\1e\16\14\0f\19\11\04\08\1f\1b\0d\17\15\13\10\07\1a\0c\12\06\0b\05\n\09\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05"
    "\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07"
    "\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08"
    "\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08"
    "\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08nil\00\00\00\00\00 \01\01\00\03\00\00\00allocation too l"
    "arge\00\00\00\000\01\01\00\14\00\00\00used block is not valid to be freed or reallocat"
    "ed\00\00\00\00\00\00P\01\01\002\00\00\00stack overflowinvalid channel stateclose of nil "
    "channelclose of closed channelclose channel during sendpanic: pa"
    "nic: runtime error: nil pointer dereferenceindex out of rangediv"
    "ide by zerounreachable\00\00K\02\01\00\0b\00\00\00GC sweepsizerunqueuesleepQueuecu"
    "rrentTaskheapStartheapEndglobalsStartglobalsEndenvArgsenvArgsPoi"
    "nterisCollectorisRunqueueGC cycle\09live:\09\09\09\09\09live bytes:\09\09\09\09frees"
    ":\09\09\09\09\09allocs:\09\09\09\09\09freed bytes:\09\09\09sweep bytes:\09\09\09total bytes:\09\09\09l"
    "ast sweep:\09\09\09\09last sweep bytes:\09\09last mark time:\09\09\09last graph ti"
    "me:\09\09last sweep time:\09\09last GC time:\09\09\c2\b5sallocator is already in"
    "itializedgcMarkStackObjectgcMarkTaskhi moontrade!doneb addressfu"
    "ll GC")
  
  (data $22 (i32.const 66568)
    "0\05\01\00\00\00\01\000\05\01\00,\04\01\00\00\00\00\00")
  
  ;;(custom_section "producers"
  ;;  (after data)
  ;;  "\02\08language\01\03C99\00\0cprocessed-by\01\05c"
  ;;  "lang\\13.0.0 (https://github.com/"
  ;;  "tinygo-org/llvm-project 7b5afb55"
  ;;  "f5c7959a2903978a25774c75172e8741"
  ;;  ")")
  
  )
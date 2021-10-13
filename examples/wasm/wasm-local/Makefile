default:
	../../../../tinygo/build/tinygo build -o main.wasm -target wasi -scheduler coroutines -gc provided --print-allocs=. --no-debug .
	#../../../../tinygo/build/tinygo build -o main.wasm -target wasi -scheduler coroutines -gc extalloc --print-allocs=. --no-debug .
	#../../../../tinygo/build/tinygo build -o main.wasm -target wasi -scheduler coroutines -gc conservative --print-allocs=. --no-debug .
	../../../../tinygo/build/tinygo build -o moon -scheduler coroutines -gc provided --print-allocs=. .
	#../../../../tinygo/build/tinygo build -o moon -scheduler coroutines -gc conservative --print-allocs=. .
	#../../../../tinygo/build/tinygo build -o moon -scheduler tasks -gc extalloc --print-allocs=. --no-debug .
	#go build -o maingo
	#wasmer compile --llvm --dylib -o main.dylib main.wasm
	#../../../../WAVM/bin/wavm compile --format=precompiled-wasm main.wasm wavm_lib.dylib
	#../../../../WAVM/bin/wavm compile --target=x86_64-linux-unknown main.wasm wavm_lib
	#wasmer compile --llvm --dylib -o main.dylib conservative.wasm
	wavm disassemble main.wasm main.wat
	wavm compile main.wasm main.compiled

runwasm:
	cd ../runner; ./wasm-runner
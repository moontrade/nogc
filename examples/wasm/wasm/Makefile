default:
	../../../../tinygo/build/tinygo build -o main.wasm -target wasi -scheduler coroutines -gc provided --print-allocs=. --no-debug .
	../../../../tinygo/build/tinygo build -o conservative.wasm -target wasi -scheduler coroutines -gc conservative --print-allocs=. --no-debug .
	#go build -o maingo
	wasmer compile --llvm --dylib -o main.dylib main.wasm
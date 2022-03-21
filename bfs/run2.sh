!/bin/bash
# clang++ -emit-llvm kernel.cu --cuda-gpu-arch=sm_61 -O3 -c
# clang++ -emit-llvm kernel2.cu --cuda-gpu-arch=sm_61 -O3 -c
# clang++ -fno-pie -emit-llvm bfs.cu --cuda-gpu-arch=sm_61 -O3 -c
clang++ bfs.cu -o bfs --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_61 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v


~/open_source_template/build/compilation/kernelTranslator bfs-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 1 1 1 32 1 1
# ~/open_source_template/build/compilation/kernelTranslator kernel2-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel2.bc 1 1 1 32 1 1

~/open_source_template/build/compilation/hostTranslator bfs-host-x86_64-unknown-linux-gnu.bc host.bc

llvm-dis gen_input.bc

llc --relocation-model=pic --filetype=obj  kernel.bc

llc --relocation-model=pic --filetype=obj  host.bc

llc --relocation-model=pic --filetype=obj  runtime_kernel_attr.bc

llc --relocation-model=pic --filetype=obj  gen_input.bc

g++ -g -Wall -L/home/bgarg6/open_source_template/build/runtime  -L/home/bgarg6/open_source_template/build/runtime/threadPool -o demo -fPIC -no-pie host.o kernel.o runtime_kernel_attr.o gen_input.o -lc -lx86Runtime -lthreadPool -lpthread
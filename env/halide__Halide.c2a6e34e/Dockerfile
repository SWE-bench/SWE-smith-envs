FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     ninja-build     build-essential     lsb-release     wget     software-properties-common     gnupg     python3     python3-pip     && rm -rf /var/lib/apt/lists/*

RUN pip3 install cmake

# Install LLVM 20 (Required range 20..99)
RUN wget https://apt.llvm.org/llvm.sh &&     chmod +x llvm.sh &&     ./llvm.sh 20 &&     apt-get install -y llvm-20-dev libclang-20-dev clang-20 lld-20 liblld-20-dev &&     rm llvm.sh


RUN git clone --recurse-submodules https://github.com/halide/Halide.git /testbed
WORKDIR /testbed
RUN git checkout c2a6e34e7f3cff6657de1a85e8bc0e82fd545003

# Use Ninja and limit tests to core functionality
RUN cmake -G Ninja -S . -B build     -DCMAKE_BUILD_TYPE=Release     -DHalide_LLVM_ROOT=/usr/lib/llvm-20     -DWITH_TEST_CORRECTNESS=ON     -DWITH_TEST_ERROR=OFF     -DWITH_TEST_GENERATOR=OFF     -DWITH_PYTHON_BINDINGS=OFF

RUN cmake --build build --target Halide _test_internal

CMD ["/bin/bash"]
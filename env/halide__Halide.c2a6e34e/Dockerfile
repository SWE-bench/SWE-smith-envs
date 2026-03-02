# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     ninja-build     build-essential     lsb-release     wget     software-properties-common     gnupg     python3     python3-pip     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false pip3 install cmake

# Install LLVM 20 (Required range 20..99)
RUN --mount=type=ssh,required=false wget https://apt.llvm.org/llvm.sh &&     chmod +x llvm.sh &&     ./llvm.sh 20 &&     apt-get install -y llvm-20-dev libclang-20-dev clang-20 lld-20 liblld-20-dev &&     rm llvm.sh


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/halide__Halide.c2a6e34e /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Use Ninja and limit tests to core functionality
RUN --mount=type=ssh,required=false cmake -G Ninja -S . -B build     -DCMAKE_BUILD_TYPE=Release     -DHalide_LLVM_ROOT=/usr/lib/llvm-20     -DWITH_TEST_CORRECTNESS=ON     -DWITH_TEST_ERROR=OFF     -DWITH_TEST_GENERATOR=OFF     -DWITH_PYTHON_BINDINGS=OFF

RUN --mount=type=ssh,required=false cmake --build build --target Halide _test_internal

CMD ["/bin/bash"]
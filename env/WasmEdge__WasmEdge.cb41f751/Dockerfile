# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     cmake     ninja-build     g++     gcc     curl     wget     zlib1g-dev     llvm-15-dev     liblld-15-dev     clang-15     libboost-all-dev     pkg-config     protobuf-compiler-grpc     libgrpc-dev     libgrpc++-dev     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false update-alternatives --install /usr/bin/clang clang /usr/bin/clang-15 100 &&     update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-15 100

ENV CC=/usr/bin/clang-15
ENV CXX=/usr/bin/clang++-15


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/WasmEdge__WasmEdge.cb41f751 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DWASMEDGE_BUILD_TESTS=ON .. &&     ninja -j2

CMD ["/bin/bash"]
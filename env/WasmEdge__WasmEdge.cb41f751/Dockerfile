FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     cmake     ninja-build     g++     gcc     curl     wget     zlib1g-dev     llvm-15-dev     liblld-15-dev     clang-15     libboost-all-dev     pkg-config     protobuf-compiler-grpc     libgrpc-dev     libgrpc++-dev     && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-15 100 &&     update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-15 100

ENV CC=/usr/bin/clang-15
ENV CXX=/usr/bin/clang++-15


RUN git clone --recurse-submodules https://github.com/WasmEdge/WasmEdge.git /testbed
WORKDIR /testbed
RUN git checkout cb41f751daac037b61ebf9df3bb3fcbcf625edb4

RUN mkdir build && cd build &&     cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DWASMEDGE_BUILD_TESTS=ON .. &&     ninja -j2

CMD ["/bin/bash"]
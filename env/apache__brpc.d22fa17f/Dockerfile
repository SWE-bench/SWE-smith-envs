# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     g++     make     cmake     libssl-dev     libgflags-dev     libprotobuf-dev     libprotoc-dev     protobuf-compiler     libleveldb-dev     libsnappy-dev     libgoogle-perftools-dev     libgtest-dev     pkg-config     && rm -rf /var/lib/apt/lists/*

# Compile and install gtest (required for unit tests)
RUN --mount=type=ssh,required=false cd /usr/src/googletest/googletest &&     mkdir build && cd build &&     cmake .. &&     make &&     cp lib/libgtest* /usr/lib/


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/apache__brpc.d22fa17f /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DBUILD_UNIT_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
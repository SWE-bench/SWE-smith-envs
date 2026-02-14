FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     g++     make     cmake     libssl-dev     libgflags-dev     libprotobuf-dev     libprotoc-dev     protobuf-compiler     libleveldb-dev     libsnappy-dev     libgoogle-perftools-dev     libgtest-dev     pkg-config     && rm -rf /var/lib/apt/lists/*

# Compile and install gtest (required for unit tests)
RUN cd /usr/src/googletest/googletest &&     mkdir build && cd build &&     cmake .. &&     make &&     cp lib/libgtest* /usr/lib/


RUN git clone --recurse-submodules https://github.com/apache/brpc.git /testbed
WORKDIR /testbed
RUN git checkout d22fa17f09514ed42e7b15e0a439827dc8310a8e

RUN mkdir build && cd build &&     cmake -DBUILD_UNIT_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libtool     autoconf     automake     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/zeromq/libzmq.git /testbed
WORKDIR /testbed
RUN git checkout 51a5a9cbe315ab149357afe063e9e2d41f4c99a8

RUN mkdir build && cd build &&     cmake -DBUILD_TESTS=ON -DBUILD_SHARED=ON -DBUILD_STATIC=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
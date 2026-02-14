FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     libgflags-dev     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/google/glog.git /testbed
WORKDIR /testbed
RUN git checkout 53d58e4531c7c90f71ddab503d915e027432447a

RUN mkdir build && cd build &&     cmake -DBUILD_TESTING=ON -DBUILD_SHARED_LIBS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
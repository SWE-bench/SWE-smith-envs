FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/google/googletest.git /testbed
WORKDIR /testbed
RUN git checkout 5a9c3f9e8d9b90bbbe8feb32902146cb8f7c1757

RUN mkdir build && cd build && cmake -Dgtest_build_tests=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
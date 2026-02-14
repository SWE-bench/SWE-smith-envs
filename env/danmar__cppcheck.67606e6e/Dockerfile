FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     cmake     libpcre3-dev     libtinyxml2-dev     python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/danmar/cppcheck.git /testbed
WORKDIR /testbed
RUN git checkout 67606e6ee50aaefa3ba6c312c644b8b962d7d9da

RUN mkdir build && cd build &&     cmake -DBUILD_TESTS=ON -DREGISTER_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
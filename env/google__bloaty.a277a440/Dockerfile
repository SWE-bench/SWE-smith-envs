FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     libprotobuf-dev     protobuf-compiler     python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/google/bloaty.git /testbed
WORKDIR /testbed
RUN git checkout a277a440f906729cd69894ca8ceb9b7144eb7f42

RUN mkdir build && cd build &&     cmake -DBUILD_TESTING=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
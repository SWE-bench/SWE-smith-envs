FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     build-essential     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/google/leveldb.git /testbed
WORKDIR /testbed
RUN git checkout ac691084fdc5546421a55b25e7653d450e5a25fb

RUN mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DLEVELDB_BUILD_TESTS=ON -DLEVELDB_BUILD_BENCHMARKS=ON -DCMAKE_CXX_STANDARD=17 .. &&     make -j$(nproc)

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM gcc:11
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     cmake     git     build-essential     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/google__leveldb.ac691084 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DLEVELDB_BUILD_TESTS=ON -DLEVELDB_BUILD_BENCHMARKS=ON -DCMAKE_CXX_STANDARD=17 .. &&     make -j$(nproc)

CMD ["/bin/bash"]
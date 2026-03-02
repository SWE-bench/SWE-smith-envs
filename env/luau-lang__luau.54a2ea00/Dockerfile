# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/luau-lang__luau.54a2ea00 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DLUAU_BUILD_TESTS=ON .. &&     make -j$(nproc 2>/dev/null || echo 2) Luau.UnitTest Luau.CLI.Test

CMD ["/bin/bash"]
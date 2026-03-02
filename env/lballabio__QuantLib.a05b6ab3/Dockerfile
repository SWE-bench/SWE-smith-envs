# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     libboost-system-dev     libboost-test-dev     libboost-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/lballabio__QuantLib.a05b6ab3 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DQL_BUILD_TEST_SUITE=ON -DQL_BUILD_EXAMPLES=OFF -DCMAKE_BUILD_TYPE=Release .. &&     make -j$(nproc)

CMD ["/bin/bash"]
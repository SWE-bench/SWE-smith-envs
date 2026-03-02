# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     cmake     python3     python3-pip     libhwloc-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/uxlfoundation__oneTBB.3ebfedd8 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DTBB_TEST=ON -DCMAKE_BUILD_TYPE=Release .. &&     cmake --build . -j$(nproc)

CMD ["/bin/bash"]
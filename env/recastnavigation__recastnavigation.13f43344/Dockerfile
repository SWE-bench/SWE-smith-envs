# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     libglu1-mesa-dev     freeglut3-dev     mesa-common-dev     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/recastnavigation__recastnavigation.13f43344 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DRECASTNAVIGATION_DEMO=OFF -DRECASTNAVIGATION_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
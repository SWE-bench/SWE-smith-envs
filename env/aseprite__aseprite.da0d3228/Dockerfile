# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     cmake     ninja-build     libx11-dev     libxcursor-dev     libxi-dev     libxrandr-dev     libgl1-mesa-dev     libfontconfig1-dev     clang     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/aseprite__aseprite.da0d3228 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -G Ninja     -DLAF_BACKEND=none     -DENABLE_TESTS=ON     .. &&     ninja

CMD ["/bin/bash"]
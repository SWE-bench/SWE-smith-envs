# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     libglew-dev     libsdl2-dev     libpng-dev     libjpeg-turbo8-dev     libmad0-dev     uuid-dev     libflac-dev     libflac++-dev     libminizip-dev     libopenal-dev     libavif-dev     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone --branch v3.4.0 https://github.com/catchorg/Catch2.git /tmp/catch2 &&     cd /tmp/catch2 &&     mkdir build && cd build &&     cmake .. -DBUILD_TESTING=OFF &&     make -j$(nproc) &&     make install &&     rm -rf /tmp/catch2

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/endless-sky__endless-sky.f1dba50f /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git fetch --all --tags
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build && cmake -DES_USE_SYSTEM_LIBRARIES=ON -DBUILD_TESTING=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
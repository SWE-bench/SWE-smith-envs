# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     g++     make     libc6-dev     cmake     libpng-dev     libjpeg-dev     libgl1-mesa-dev     libsqlite3-dev     libogg-dev     libvorbis-dev     libopenal-dev     libcurl4-gnutls-dev     libfreetype6-dev     zlib1g-dev     libgmp-dev     libjsoncpp-dev     libzstd-dev     libluajit-5.1-dev     gettext     libsdl2-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/luanti-org__luanti.fc363085 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake ..     -DRUN_IN_PLACE=TRUE     -DBUILD_UNITTESTS=TRUE     -DCMAKE_BUILD_TYPE=Release &&     make -j$(nproc)

CMD ["/bin/bash"]
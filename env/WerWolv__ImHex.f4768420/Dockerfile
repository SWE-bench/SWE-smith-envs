# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     gcc-14     g++-14     lld     pkg-config     cmake     ccache     libglfw3-dev     libglm-dev     libmagic-dev     libmbedtls-dev     libfontconfig-dev     libfreetype-dev     libdbus-1-dev     libcurl4-gnutls-dev     libgtk-3-dev     ninja-build     zlib1g-dev     libbz2-dev     liblzma-dev     libzstd-dev     liblz4-dev     libssh2-1-dev     libmd4c-dev     libmd4c-html0-dev     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/WerWolv__ImHex.f4768420 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Explicitly build unit_tests target to ensure test binaries are produced
RUN --mount=type=ssh,required=false mkdir build && cd build &&     CC=gcc-14 CXX=g++-14 cmake -G Ninja     -DCMAKE_BUILD_TYPE=Release     -DIMHEX_OFFLINE_BUILD=ON     -DIMHEX_STRIP_RELEASE=OFF     -DIMHEX_IGNORE_GPU=ON     -DIMHEX_USE_SYSTEM_FMT=OFF     .. &&     ninja unit_tests

CMD ["/bin/bash"]
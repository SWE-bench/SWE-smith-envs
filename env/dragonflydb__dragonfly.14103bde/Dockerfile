# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     ninja-build     libunwind-dev     libboost-context-dev     libssl-dev     autoconf-archive     libtool     cmake     g++     bison     zlib1g-dev     pkg-config     python3     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/dragonflydb__dragonfly.14103bde /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false ./helio/blaze.sh -release -DWITH_AWS=OFF -DWITH_GCP=OFF -DWITH_TIERING=OFF -DWITH_SEARCH=OFF

RUN --mount=type=ssh,required=false cd build-opt && ninja dragonfly hash_test string_view_sso_test

CMD ["/bin/bash"]
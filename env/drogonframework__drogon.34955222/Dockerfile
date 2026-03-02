# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     cmake     make     pkg-config     gcc     g++     openssl     libssl-dev     libjsoncpp-dev     uuid-dev     zlib1g-dev     libc-ares-dev     postgresql-server-dev-all     libmariadb-dev     libsqlite3-dev     libhiredis-dev     libbrotli-dev     libyaml-cpp-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/drogonframework__drogon.34955222 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DBUILD_TESTING=ON -DCMAKE_BUILD_TYPE=Release .. &&     make -j$(nproc)

CMD ["/bin/bash"]
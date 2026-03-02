# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive
RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     python3     libssl-dev     ninja-build     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/duckdb__duckdb.cb9e7c21 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Build DuckDB unit tests without autoloading to avoid network dependency in tests
RUN --mount=type=ssh,required=false mkdir build && cd build && cmake -G Ninja -DENABLE_EXTENSION_AUTOLOADING=0 -DENABLE_EXTENSION_AUTOINSTALL=0 .. && ninja unittest
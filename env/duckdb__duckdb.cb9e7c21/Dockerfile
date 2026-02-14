FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y     build-essential     cmake     git     python3     libssl-dev     ninja-build     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/duckdb/duckdb.git /testbed
WORKDIR /testbed
RUN git checkout cb9e7c2193963670f358682fb369c17ead60e90c

# Build DuckDB unit tests without autoloading to avoid network dependency in tests
RUN mkdir build && cd build && cmake -G Ninja -DENABLE_EXTENSION_AUTOLOADING=0 -DENABLE_EXTENSION_AUTOINSTALL=0 .. && ninja unittest
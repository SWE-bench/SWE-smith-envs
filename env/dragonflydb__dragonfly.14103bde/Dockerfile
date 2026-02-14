FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     ninja-build     libunwind-dev     libboost-context-dev     libssl-dev     autoconf-archive     libtool     cmake     g++     bison     zlib1g-dev     pkg-config     python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/dragonflydb/dragonfly.git /testbed
WORKDIR /testbed
RUN git checkout 14103bde242967fa55dea98d08391640c12cd4db

RUN ./helio/blaze.sh -release -DWITH_AWS=OFF -DWITH_GCP=OFF -DWITH_TIERING=OFF -DWITH_SEARCH=OFF

RUN cd build-opt && ninja dragonfly hash_test string_view_sso_test

CMD ["/bin/bash"]
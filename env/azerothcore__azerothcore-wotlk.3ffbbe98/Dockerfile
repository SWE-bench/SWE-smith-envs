# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     cmake     make     gcc     g++     libmysqlclient-dev     libssl-dev     libbz2-dev     libreadline-dev     libncurses-dev     libboost-all-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/azerothcore__azerothcore-wotlk.3ffbbe98 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake ..     -DCMAKE_INSTALL_PREFIX=/testbed/bin     -DBUILD_TESTING=ON &&     make -j$(nproc) unit_tests

CMD ["/bin/bash"]
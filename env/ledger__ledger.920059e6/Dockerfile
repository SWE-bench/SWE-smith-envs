# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     texinfo     python3-dev     python3-pip     zlib1g-dev     libbz2-dev     libgmp3-dev     gettext     libmpfr-dev     libboost-date-time-dev     libboost-filesystem-dev     libboost-graph-dev     libboost-iostreams-dev     libboost-python-dev     libboost-regex-dev     libboost-test-dev     libboost-system-dev     libboost-serialization-dev     doxygen     libedit-dev     libmpc-dev     tzdata     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ledger__ledger.920059e6 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON -DBUILD_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
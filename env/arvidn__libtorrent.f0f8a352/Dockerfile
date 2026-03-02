# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     libboost-all-dev     libssl-dev     libgnutls28-dev     libgcrypt20-dev     python3     python3-pip     python-is-python3     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/arvidn__libtorrent.f0f8a352 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release           -Dbuild_tests=ON           -Dbuild_examples=OFF           -Dbuild_tools=OFF           -Dpython-bindings=OFF           .. &&     make -j$(nproc)

CMD ["/bin/bash"]
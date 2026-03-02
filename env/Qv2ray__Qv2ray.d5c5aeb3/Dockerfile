# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     ninja-build     libcurl4-openssl-dev     libgrpc++-dev     libprotobuf-dev     libqt5svg5-dev     protobuf-compiler     protobuf-compiler-grpc     qtbase5-dev     qtdeclarative5-dev     qttools5-dev     qtquickcontrols2-5-dev     libssl-dev     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/Qv2ray__Qv2ray.d5c5aeb3 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -GNinja           -DCMAKE_BUILD_TYPE=Release           -DBUILD_TESTING=ON           -DQV2RAY_BUILD_INFO="SWE-smith Build"           .. &&     ninja || true

CMD ["/bin/bash"]
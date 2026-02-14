FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     ninja-build     libcurl4-openssl-dev     libgrpc++-dev     libprotobuf-dev     libqt5svg5-dev     protobuf-compiler     protobuf-compiler-grpc     qtbase5-dev     qtdeclarative5-dev     qttools5-dev     qtquickcontrols2-5-dev     libssl-dev     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/Qv2ray/Qv2ray.git /testbed
WORKDIR /testbed
RUN git checkout d5c5aeb366e2fbe9c9243648af36b0d11da14920

RUN mkdir build && cd build &&     cmake -GNinja           -DCMAKE_BUILD_TYPE=Release           -DBUILD_TESTING=ON           -DQV2RAY_BUILD_INFO="SWE-smith Build"           .. &&     ninja || true

CMD ["/bin/bash"]
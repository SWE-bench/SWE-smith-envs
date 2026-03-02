# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     libz-dev     liblzma-dev     libpng-dev     liblzo2-dev     libcurl4-openssl-dev     libsdl2-dev     libfreetype6-dev     libfontconfig1-dev     libharfbuzz-dev     libicu-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/OpenTTD__OpenTTD.ae80a47c /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DOPTION_DEDICATED=ON -DBUILD_TESTING=ON -DCMAKE_BUILD_TYPE=Release .. &&     make -j$(nproc) openttd_test

CMD ["/bin/bash"]
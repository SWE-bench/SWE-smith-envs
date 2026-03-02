# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     cmake     build-essential     pkg-config     libavahi-compat-libdnssd-dev     libcurl4-openssl-dev     libssl-dev     libx11-dev     libxext-dev     libxinerama-dev     libxrandr-dev     libxtst-dev     libxi-dev     libice-dev     libsm-dev     libgl1-mesa-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/input-leap__input-leap.34a34fb2 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build && cmake -DINPUTLEAP_BUILD_TESTS=ON -DINPUTLEAP_BUILD_GUI=OFF .. && make -j$(nproc)

CMD ["/bin/bash"]
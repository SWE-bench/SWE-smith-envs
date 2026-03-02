# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     cmake     ninja-build     pkg-config     qtbase5-dev     qtbase5-private-dev     qttools5-dev     qttools5-dev-tools     libqt5svg5-dev     libqt5x11extras5-dev     libqt5networkauth5-dev     libbotan-2-dev     libargon2-dev     libqrencode-dev     libreadline-dev     zlib1g-dev     libminizip-dev     libusb-1.0-0-dev     libxi-dev     libxtst-dev     libpcsclite-dev     libdbus-1-dev     libkeyutils-dev     asciidoctor     xvfb     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/keepassxreboot__keepassxc.5bd42c47 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git fetch --all --tags
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -G Ninja     -DCMAKE_BUILD_TYPE=Release     -DWITH_XC_ALL=ON     -DWITH_TESTS=ON     -DWITH_GUI_TESTS=ON     .. &&     ninja

CMD ["/bin/bash"]
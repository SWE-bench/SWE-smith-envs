FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     cmake     ninja-build     pkg-config     qtbase5-dev     qtbase5-private-dev     qttools5-dev     qttools5-dev-tools     libqt5svg5-dev     libqt5x11extras5-dev     libqt5networkauth5-dev     libbotan-2-dev     libargon2-dev     libqrencode-dev     libreadline-dev     zlib1g-dev     libminizip-dev     libusb-1.0-0-dev     libxi-dev     libxtst-dev     libpcsclite-dev     libdbus-1-dev     libkeyutils-dev     asciidoctor     xvfb     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/keepassxreboot/keepassxc.git /testbed
WORKDIR /testbed
RUN git fetch --all --tags
RUN git checkout 5bd42c4725b54bab8114bb41303159aec9f63fa4

RUN mkdir build && cd build &&     cmake -G Ninja     -DCMAKE_BUILD_TYPE=Release     -DWITH_XC_ALL=ON     -DWITH_TESTS=ON     -DWITH_GUI_TESTS=ON     .. &&     ninja

CMD ["/bin/bash"]
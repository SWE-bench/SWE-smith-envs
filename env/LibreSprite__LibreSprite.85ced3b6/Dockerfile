# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     ca-certificates     gpg     wget     && wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor -o /usr/share/keyrings/kitware-archive-keyring.gpg     && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ noble main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null     && apt-get update && apt-get install -y     git     cmake     g++     libcurl4-gnutls-dev     libfreetype6-dev     libgif-dev     libgtest-dev     libjpeg-dev     libpixman-1-dev     libpng-dev     libsdl2-dev     libsdl2-image-dev     libtinyxml2-dev     ninja-build     zlib1g-dev     libarchive-dev     pkg-config     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/LibreSprite__LibreSprite.85ced3b6 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false sed -i 's/cmake_minimum_required(VERSION 4.1)/cmake_minimum_required(VERSION 3.25)/' CMakeLists.txt

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -G Ninja     -DENABLE_TESTS=ON     -DBUILD_TESTING=ON     .. &&     ninja libresprite

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     cmake     ninja-build     pkg-config     g++     libsdl2-dev     libicu-dev     libcurl4-openssl-dev     libfontconfig1-dev     libfreetype6-dev     libpng-dev     libssl-dev     libzip-dev     libspeexdsp-dev     libzstd-dev     nlohmann-json3-dev     libbenchmark-dev     libgtest-dev     libflac-dev     libvorbis-dev     libogg-dev     curl     ca-certificates     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/OpenRCT2__OpenRCT2.f228d738 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -G Ninja           -DCMAKE_BUILD_TYPE=Release           -DWITH_TESTS=ON           -DBUILD_SHARED_LIBS=ON           .. &&     ninja

RUN --mount=type=ssh,required=false mkdir -p build/data &&     cp -r data/language build/data/ &&     ln -s /testbed/resources/g2 build/data/g2 &&     cp build/*.dat build/data/ 2>/dev/null || true

CMD ["/bin/bash"]
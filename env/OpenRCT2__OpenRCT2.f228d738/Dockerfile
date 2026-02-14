FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     cmake     ninja-build     pkg-config     g++     libsdl2-dev     libicu-dev     libcurl4-openssl-dev     libfontconfig1-dev     libfreetype6-dev     libpng-dev     libssl-dev     libzip-dev     libspeexdsp-dev     libzstd-dev     nlohmann-json3-dev     libbenchmark-dev     libgtest-dev     libflac-dev     libvorbis-dev     libogg-dev     curl     ca-certificates     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/OpenRCT2/OpenRCT2.git /testbed
WORKDIR /testbed
RUN git checkout f228d738155b06f13156af70ec6560db97b1b2cb

RUN mkdir build && cd build &&     cmake -G Ninja           -DCMAKE_BUILD_TYPE=Release           -DWITH_TESTS=ON           -DBUILD_SHARED_LIBS=ON           .. &&     ninja

RUN mkdir -p build/data &&     cp -r data/language build/data/ &&     ln -s /testbed/resources/g2 build/data/g2 &&     cp build/*.dat build/data/ 2>/dev/null || true

CMD ["/bin/bash"]
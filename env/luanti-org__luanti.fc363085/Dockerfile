FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     g++     make     libc6-dev     cmake     libpng-dev     libjpeg-dev     libgl1-mesa-dev     libsqlite3-dev     libogg-dev     libvorbis-dev     libopenal-dev     libcurl4-gnutls-dev     libfreetype6-dev     zlib1g-dev     libgmp-dev     libjsoncpp-dev     libzstd-dev     libluajit-5.1-dev     gettext     libsdl2-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/luanti-org/luanti.git /testbed
WORKDIR /testbed
RUN git checkout fc363085dd46330908b3a485dbe5bd7adfcc91b8

RUN mkdir build && cd build &&     cmake ..     -DRUN_IN_PLACE=TRUE     -DBUILD_UNITTESTS=TRUE     -DCMAKE_BUILD_TYPE=Release &&     make -j$(nproc)

CMD ["/bin/bash"]
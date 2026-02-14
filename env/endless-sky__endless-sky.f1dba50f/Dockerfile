FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     libglew-dev     libsdl2-dev     libpng-dev     libjpeg-turbo8-dev     libmad0-dev     uuid-dev     libflac-dev     libflac++-dev     libminizip-dev     libopenal-dev     libavif-dev     && rm -rf /var/lib/apt/lists/*

RUN git clone --branch v3.4.0 https://github.com/catchorg/Catch2.git /tmp/catch2 &&     cd /tmp/catch2 &&     mkdir build && cd build &&     cmake .. -DBUILD_TESTING=OFF &&     make -j$(nproc) &&     make install &&     rm -rf /tmp/catch2

RUN git clone --recurse-submodules https://github.com/endless-sky/endless-sky.git /testbed
WORKDIR /testbed
RUN git fetch --all --tags
RUN git checkout f1dba50fe4cd22bd5ed51dc601203c9f62cd9164

RUN mkdir build && cd build && cmake -DES_USE_SYSTEM_LIBRARIES=ON -DBUILD_TESTING=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
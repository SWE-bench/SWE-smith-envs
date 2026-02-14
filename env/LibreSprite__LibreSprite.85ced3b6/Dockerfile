FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     ca-certificates     gpg     wget     && wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor -o /usr/share/keyrings/kitware-archive-keyring.gpg     && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ noble main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null     && apt-get update && apt-get install -y     git     cmake     g++     libcurl4-gnutls-dev     libfreetype6-dev     libgif-dev     libgtest-dev     libjpeg-dev     libpixman-1-dev     libpng-dev     libsdl2-dev     libsdl2-image-dev     libtinyxml2-dev     ninja-build     zlib1g-dev     libarchive-dev     pkg-config     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/LibreSprite/LibreSprite.git /testbed
WORKDIR /testbed
RUN git checkout 85ced3b6b23d38a5cf03ecab2218bc755131cc21

RUN sed -i 's/cmake_minimum_required(VERSION 4.1)/cmake_minimum_required(VERSION 3.25)/' CMakeLists.txt

RUN mkdir build && cd build &&     cmake -G Ninja     -DENABLE_TESTS=ON     -DBUILD_TESTING=ON     .. &&     ninja libresprite

CMD ["/bin/bash"]
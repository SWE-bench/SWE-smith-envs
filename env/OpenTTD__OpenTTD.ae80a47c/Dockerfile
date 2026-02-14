FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     libz-dev     liblzma-dev     libpng-dev     liblzo2-dev     libcurl4-openssl-dev     libsdl2-dev     libfreetype6-dev     libfontconfig1-dev     libharfbuzz-dev     libicu-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/OpenTTD/OpenTTD.git /testbed
WORKDIR /testbed
RUN git checkout ae80a47c7db48e543d9a9ebc682df1a889661d2a

RUN mkdir build && cd build &&     cmake -DOPTION_DEDICATED=ON -DBUILD_TESTING=ON -DCMAKE_BUILD_TYPE=Release .. &&     make -j$(nproc) openttd_test

CMD ["/bin/bash"]
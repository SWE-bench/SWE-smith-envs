FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     cmake     build-essential     graphviz     git     coinor-libclp-dev     libceres-dev     libjpeg-dev     liblemon-dev     libpng-dev     libtiff-dev     libxxf86vm1     libxxf86vm-dev     libxi-dev     libxrandr-dev     python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/openMVG/openMVG.git /testbed
WORKDIR /testbed
RUN git checkout c76d87244fb3590fb8b9a752be34f07411057ae2

RUN mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=RELEASE     -DOpenMVG_BUILD_TESTS=ON     -DOpenMVG_BUILD_EXAMPLES=OFF     -DOpenMVG_BUILD_SOFTWARES=ON     -DCOINUTILS_INCLUDE_DIR_HINTS=/usr/include     -DLEMON_INCLUDE_DIR_HINTS=/usr/include/lemon     -DCLP_INCLUDE_DIR_HINTS=/usr/include     -DOSI_INCLUDE_DIR_HINTS=/usr/include     ../src &&     make -j$(nproc)

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     cmake     build-essential     graphviz     git     coinor-libclp-dev     libceres-dev     libjpeg-dev     liblemon-dev     libpng-dev     libtiff-dev     libxxf86vm1     libxxf86vm-dev     libxi-dev     libxrandr-dev     python3     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/openMVG__openMVG.c76d8724 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=RELEASE     -DOpenMVG_BUILD_TESTS=ON     -DOpenMVG_BUILD_EXAMPLES=OFF     -DOpenMVG_BUILD_SOFTWARES=ON     -DCOINUTILS_INCLUDE_DIR_HINTS=/usr/include     -DLEMON_INCLUDE_DIR_HINTS=/usr/include/lemon     -DCLP_INCLUDE_DIR_HINTS=/usr/include     -DOSI_INCLUDE_DIR_HINTS=/usr/include     ../src &&     make -j$(nproc)

CMD ["/bin/bash"]
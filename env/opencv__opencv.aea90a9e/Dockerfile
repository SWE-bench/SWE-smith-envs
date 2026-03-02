# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libjpeg-dev     libpng-dev     libtiff-dev     libavcodec-dev     libavformat-dev     libswscale-dev     libv4l-dev     libxvidcore-dev     libx264-dev     libgtk-3-dev     libatlas-base-dev     gfortran     python3-dev     python3-numpy     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/opencv__opencv.aea90a9e /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -D CMAKE_BUILD_TYPE=RELEASE           -D CMAKE_INSTALL_PREFIX=/usr/local           -D BUILD_EXAMPLES=OFF           -D BUILD_TESTS=ON           -D BUILD_PERF_TESTS=OFF           .. &&     make -j$(nproc) &&     make install

CMD ["/bin/bash"]
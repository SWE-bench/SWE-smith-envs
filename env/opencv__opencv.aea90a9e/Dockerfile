FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libjpeg-dev     libpng-dev     libtiff-dev     libavcodec-dev     libavformat-dev     libswscale-dev     libv4l-dev     libxvidcore-dev     libx264-dev     libgtk-3-dev     libatlas-base-dev     gfortran     python3-dev     python3-numpy     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/opencv/opencv.git /testbed
WORKDIR /testbed
RUN git checkout aea90a9e314d220dcaa80a616808afc38e1c78b6

RUN mkdir build && cd build &&     cmake -D CMAKE_BUILD_TYPE=RELEASE           -D CMAKE_INSTALL_PREFIX=/usr/local           -D BUILD_EXAMPLES=OFF           -D BUILD_TESTS=ON           -D BUILD_PERF_TESTS=OFF           .. &&     make -j$(nproc) &&     make install

CMD ["/bin/bash"]
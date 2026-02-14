FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     cmake     ninja-build     libx11-dev     libxcursor-dev     libxi-dev     libxrandr-dev     libgl1-mesa-dev     libfontconfig1-dev     clang     && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/aseprite/aseprite.git /testbed
WORKDIR /testbed
RUN git checkout da0d3228599580ec4bc447bab303751a51c09d9a &&     git submodule update --init --recursive

RUN mkdir build && cd build &&     cmake -G Ninja     -DLAF_BACKEND=none     -DENABLE_TESTS=ON     .. &&     ninja

CMD ["/bin/bash"]
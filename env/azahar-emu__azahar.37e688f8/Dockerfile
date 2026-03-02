# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libsdl2-dev     libusb-1.0-0-dev     qt6-base-dev     qt6-multimedia-dev     libssl-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/azahar-emu__azahar.37e688f8 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false sed -i '1i #include <memory>' src/video_core/shader/shader_jit_a64_compiler.h

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake ..     -DCMAKE_BUILD_TYPE=Release     -DENABLE_QT=OFF     -DENABLE_SDL2=ON     -DENABLE_VULKAN=ON     -DENABLE_TESTS=ON     -DBUILD_TESTING=OFF     -DCITRA_USE_BUNDLED_BOOST=ON     -DCITRA_USE_PRECOMPILED_HEADERS=OFF &&     make -j$(nproc) tests

CMD ["/bin/bash"]
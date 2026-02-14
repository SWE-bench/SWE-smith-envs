FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libsdl2-dev     libusb-1.0-0-dev     qt6-base-dev     qt6-multimedia-dev     libssl-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/azahar-emu/azahar.git /testbed
WORKDIR /testbed
RUN git checkout 37e688f82d42917a8d232b8e9b49ecee814846b4

RUN sed -i '1i #include <memory>' src/video_core/shader/shader_jit_a64_compiler.h

RUN mkdir build && cd build &&     cmake ..     -DCMAKE_BUILD_TYPE=Release     -DENABLE_QT=OFF     -DENABLE_SDL2=ON     -DENABLE_VULKAN=ON     -DENABLE_TESTS=ON     -DBUILD_TESTING=OFF     -DCITRA_USE_BUNDLED_BOOST=ON     -DCITRA_USE_PRECOMPILED_HEADERS=OFF &&     make -j$(nproc) tests

CMD ["/bin/bash"]
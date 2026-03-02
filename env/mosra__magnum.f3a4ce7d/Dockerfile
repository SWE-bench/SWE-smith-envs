# syntax=docker/dockerfile:1
FROM gcc:11
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive
ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

RUN --mount=type=ssh,required=false wget -qO- https://github.com/Kitware/CMake/releases/download/v3.26.4/cmake-3.26.4-linux-$(uname -m).tar.gz | tar --strip-components=1 -xz -C /usr/local &&     mkdir -p /deps && cd /deps &&     git clone https://github.com/mosra/corrade.git &&     cmake -S corrade -B corrade/build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local &&     cmake --build corrade/build --target install -j$(nproc) &&     rm -rf /deps/corrade &&     mkdir -p /app && cd /app &&     git clone https://github.com/mosra/magnum.git . &&     cmake -B build         -DCMAKE_BUILD_TYPE=Release         -DMAGNUM_BUILD_TESTS=ON         -DMAGNUM_WITH_GL=OFF         -DMAGNUM_WITH_AUDIO=OFF         -DMAGNUM_WITH_DEBUGTOOLS=ON         -DMAGNUM_WITH_PRIMITIVES=ON         -DMAGNUM_WITH_SCENEGRAPH=ON         -DMAGNUM_WITH_SHADERS=ON         -DMAGNUM_WITH_TEXT=ON         -DMAGNUM_WITH_TEXTURETOOLS=ON         -DMAGNUM_WITH_TRADE=ON &&     cmake --build build -j$(nproc) &&     cmake --install build

WORKDIR /app
RUN --mount=type=ssh,required=false git submodule update --init --recursive
CMD ["/bin/bash"]
FROM gcc:11

ENV DEBIAN_FRONTEND=noninteractive
ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

RUN wget -qO- https://github.com/Kitware/CMake/releases/download/v3.26.4/cmake-3.26.4-linux-$(uname -m).tar.gz | tar --strip-components=1 -xz -C /usr/local &&     mkdir -p /deps && cd /deps &&     git clone --recurse-submodules https://github.com/mosra/corrade.git &&     cmake -S corrade -B corrade/build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local &&     cmake --build corrade/build --target install -j$(nproc) &&     rm -rf /deps/corrade &&     mkdir -p /app && cd /app &&     git clone --recurse-submodules https://github.com/mosra/magnum.git . &&     cmake -B build         -DCMAKE_BUILD_TYPE=Release         -DMAGNUM_BUILD_TESTS=ON         -DMAGNUM_WITH_GL=OFF         -DMAGNUM_WITH_AUDIO=OFF         -DMAGNUM_WITH_DEBUGTOOLS=ON         -DMAGNUM_WITH_PRIMITIVES=ON         -DMAGNUM_WITH_SCENEGRAPH=ON         -DMAGNUM_WITH_SHADERS=ON         -DMAGNUM_WITH_TEXT=ON         -DMAGNUM_WITH_TEXTURETOOLS=ON         -DMAGNUM_WITH_TRADE=ON &&     cmake --build build -j$(nproc) &&     cmake --install build

WORKDIR /app
RUN git checkout f3a4ce7d1d0cd8085d4f05811c378813ada3cfcc
CMD ["/bin/bash"]
FROM ubuntu:24.04

RUN export DEBIAN_FRONTEND=noninteractive  && apt-get -qq update  && apt-get install --no-install-recommends -y     git     ca-certificates     cmake     g++     libarchive-dev     libgl1-mesa-dev     libglvnd-dev     libqalculate-dev     libqt6opengl6-dev     libqt6sql6-sqlite     libqt6svg6-dev     libxml2-utils     make     pkg-config     python3-dev     qt6-base-dev     qt6-scxml-dev      qt6-tools-dev     qt6-tools-dev-tools     qt6-l10n-tools     qtkeychain-qt6-dev     qcoro-qt6-dev  && apt-get clean  && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/albertlauncher/albert.git /testbed
WORKDIR /testbed
RUN git checkout 897c77979d55fdfaba23babddc91fbe841ee7a3e

RUN cmake -B build -DBUILD_TESTS=ON -DCMAKE_BUILD_TYPE=Release
RUN cmake --build build -j$(nproc)

CMD ["/bin/bash"]
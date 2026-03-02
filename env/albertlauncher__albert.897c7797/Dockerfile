# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false export DEBIAN_FRONTEND=noninteractive  && apt-get -qq update  && apt-get install --no-install-recommends -y     git     ca-certificates     cmake     g++     libarchive-dev     libgl1-mesa-dev     libglvnd-dev     libqalculate-dev     libqt6opengl6-dev     libqt6sql6-sqlite     libqt6svg6-dev     libxml2-utils     make     pkg-config     python3-dev     qt6-base-dev     qt6-scxml-dev      qt6-tools-dev     qt6-tools-dev-tools     qt6-l10n-tools     qtkeychain-qt6-dev     qcoro-qt6-dev  && apt-get clean  && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/albertlauncher__albert.897c7797 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false cmake -B build -DBUILD_TESTS=ON -DCMAKE_BUILD_TYPE=Release
RUN --mount=type=ssh,required=false cmake --build build -j$(nproc)

CMD ["/bin/bash"]
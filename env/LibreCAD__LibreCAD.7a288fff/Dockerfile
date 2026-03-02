# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     libboost-dev     libmuparser-dev     libfreetype6-dev     libicu-dev     libgl-dev     qt6-base-dev     libqt6svg6-dev     qt6-tools-dev     qt6-tools-dev-tools     libqt6svgwidgets6     qt6-l10n-tools     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/LibreCAD__LibreCAD.7a288fff /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DBUILD_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
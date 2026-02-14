FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     libboost-dev     libmuparser-dev     libfreetype6-dev     libicu-dev     libgl-dev     qt6-base-dev     libqt6svg6-dev     qt6-tools-dev     qt6-tools-dev-tools     libqt6svgwidgets6     qt6-l10n-tools     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/LibreCAD/LibreCAD.git /testbed
WORKDIR /testbed
RUN git checkout 7a288ffff76215dea36c3bc4794765ccb85d1a06

RUN mkdir build && cd build &&     cmake -DBUILD_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
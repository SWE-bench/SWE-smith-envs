# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libjack-jackd2-dev     libsndfile1-dev     libfftw3-dev     libxt-dev     libavahi-client-dev     libudev-dev     libasound2-dev     libicu-dev     libreadline-dev     libncurses5-dev     qt6-base-dev     qt6-base-dev-tools     qt6-tools-dev     qt6-tools-dev-tools     qt6-declarative-dev     libqt6gui6     libqt6printsupport6     libqt6svgwidgets6     libqt6websockets6-dev     libqt6webenginecore6     libqt6webenginecore6-bin     qt6-webengine-dev     qt6-webengine-dev-tools     libqt6webchannel6-dev     libqt6opengl6-dev     libqt6svg6-dev     linguist-qt6     qt6-l10n-tools     libglx-dev     libgl1-mesa-dev     libvulkan-dev     libxkbcommon-dev     libxcb-xkb-dev     libboost-test-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/supercollider__supercollider.438bf480 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release           -DSC_IDE=OFF           -DBUILD_TESTING=ON           -DNATIVE=OFF           .. &&     make -j$(nproc)

ENV QT_QPA_PLATFORM=offscreen
CMD ["/bin/bash"]
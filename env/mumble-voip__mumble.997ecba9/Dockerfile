# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y ca-certificates gpg wget &&     wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor -o /usr/share/keyrings/kitware-archive-keyring.gpg &&     echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null &&     apt-get update && apt-get install -y     build-essential     cmake     pkgconf     qt6-base-dev     qt6-tools-dev     qt6-tools-dev-tools     libqt6svg6-dev     qt6-l10n-tools     libgl-dev     libboost-dev     libssl-dev     libprotobuf-dev     protobuf-compiler     libprotoc-dev     libcap-dev     libxi-dev     libasound2-dev     libogg-dev     libsndfile1-dev     libopus-dev     libspeechd-dev     libavahi-compat-libdnssd-dev     libxcb-xinerama0     libzeroc-ice-dev     libpoco-dev     libmysqlclient-dev     libpq-dev     python3     git     gcc-12     g++-12     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 100 --slave /usr/bin/g++ g++ /usr/bin/g++-12


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/mumble-voip__mumble.997ecba9 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -Dtests=ON           -Doverlay-xcompile=OFF           -Dserver=OFF           -Dclient=ON           -Dice=OFF           .. &&     make -j$(nproc)

CMD ["/bin/bash"]
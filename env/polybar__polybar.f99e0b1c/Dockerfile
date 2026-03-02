# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     cmake     pkg-config     python3     libuv1-dev     libcairo2-dev     libxcb1-dev     libxcb-util-dev     libxcb-randr0-dev     libxcb-composite0-dev     libxcb-image0-dev     libxcb-ewmh-dev     libxcb-icccm4-dev     libxcb-xkb-dev     libxcb-xrm-dev     libxcb-cursor-dev     libfontconfig1-dev     libfreetype6-dev     libasound2-dev     libpulse-dev     libmpdclient-dev     libcurl4-openssl-dev     libnl-3-dev     libnl-genl-3-dev     libiw-dev     libjsoncpp-dev xcb-proto python3-xcbgen i3-wm     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/polybar__polybar.f99e0b1c /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DBUILD_TESTS=ON           -DENABLE_ALSA=ON           -DENABLE_PULSEAUDIO=ON           -DENABLE_I3=ON           -DENABLE_MPD=ON           -DENABLE_NETWORK=ON           -DENABLE_CURL=ON           -DBUILD_DOC=OFF           .. &&     make -j$(nproc)

CMD ["/bin/bash"]
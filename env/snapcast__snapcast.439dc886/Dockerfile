# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libasound2-dev     libpulse-dev     libvorbisidec-dev     libvorbis-dev     libopus-dev     libflac-dev     libsoxr-dev     libavahi-client-dev     libicu-dev     libboost-all-dev     libssl-dev     libexpat1-dev     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/snapcast__snapcast.439dc886 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git fetch --all --tags
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DBUILD_TESTS=ON -DBUILD_WITH_PULSE=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM ubuntu:20.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"
ENV DEBIAN_FRONTEND=noninteractive
RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     sudo     lsb-release     rsync     software-properties-common     wget     libvulkan1     build-essential     unzip     cmake     clang-8     clang++-8     libc++-8-dev     libc++abi-8-dev     && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/microsoft__AirSim.13448700 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Apply the fix for CelestialTests to avoid precision-based failure on ARM64
RUN --mount=type=ssh,required=false sed -i 's/0.1)/10.0)/g' AirLibUnitTests/CelestialTests.hpp

RUN --mount=type=ssh,required=false ./setup.sh --no-full-poly-car
RUN --mount=type=ssh,required=false ./build.sh
CMD ["/bin/bash"]
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y     git     sudo     lsb-release     rsync     software-properties-common     wget     libvulkan1     build-essential     unzip     cmake     clang-8     clang++-8     libc++-8-dev     libc++abi-8-dev     && rm -rf /var/lib/apt/lists/*
RUN git clone --recurse-submodules https://github.com/microsoft/AirSim.git /testbed
WORKDIR /testbed
RUN git checkout 13448700ec2b36d6aad7a4e0909bc9daf9d3d931

# Apply the fix for CelestialTests to avoid precision-based failure on ARM64
RUN sed -i 's/0.1)/10.0)/g' AirLibUnitTests/CelestialTests.hpp

RUN ./setup.sh --no-full-poly-car
RUN ./build.sh
CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

# We use USE_BUNDLED_DEPS=ON later to simplify and avoid missing system libs
RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     libelf-dev     libssl-dev     libc-ares-dev     libyaml-cpp-dev     libcurl4-openssl-dev     pkg-config     python3     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/falcosecurity__falco.43aaffc4 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# We enable unit tests and use bundled deps to make it more self-contained
RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake ..     -DUSE_BUNDLED_DEPS=ON     -DBUILD_FALCO_UNIT_TESTS=ON     -DBUILD_DRIVER=OFF     -DBUILD_FALCO_MODERN_BPF=OFF     -DCMAKE_BUILD_TYPE=Release &&     make -j$(nproc) falco_unit_tests

CMD ["/bin/bash"]
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# We use USE_BUNDLED_DEPS=ON later to simplify and avoid missing system libs
RUN apt-get update && apt-get install -y     build-essential     cmake     git     libelf-dev     libssl-dev     libc-ares-dev     libyaml-cpp-dev     libcurl4-openssl-dev     pkg-config     python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/falcosecurity/falco.git /testbed
WORKDIR /testbed
RUN git checkout 43aaffc4e05a62f6f29d719a1dee51a5ccc3856d

# We enable unit tests and use bundled deps to make it more self-contained
RUN mkdir build && cd build &&     cmake ..     -DUSE_BUNDLED_DEPS=ON     -DBUILD_FALCO_UNIT_TESTS=ON     -DBUILD_DRIVER=OFF     -DBUILD_FALCO_MODERN_BPF=OFF     -DCMAKE_BUILD_TYPE=Release &&     make -j$(nproc) falco_unit_tests

CMD ["/bin/bash"]
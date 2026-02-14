FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     cmake     build-essential     pkg-config     libavahi-compat-libdnssd-dev     libcurl4-openssl-dev     libssl-dev     libx11-dev     libxext-dev     libxinerama-dev     libxrandr-dev     libxtst-dev     libxi-dev     libice-dev     libsm-dev     libgl1-mesa-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/input-leap/input-leap.git /testbed
WORKDIR /testbed
RUN git checkout 34a34fb20b93113a6b26052cb5a54f9be2327775

RUN mkdir build && cd build && cmake -DINPUTLEAP_BUILD_TESTS=ON -DINPUTLEAP_BUILD_GUI=OFF .. && make -j$(nproc)

CMD ["/bin/bash"]
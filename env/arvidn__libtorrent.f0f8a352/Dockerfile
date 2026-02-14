FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     libboost-all-dev     libssl-dev     libgnutls28-dev     libgcrypt20-dev     python3     python3-pip     python-is-python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/arvidn/libtorrent.git /testbed
WORKDIR /testbed
RUN git checkout f0f8a352cc9eb1bb8936f0b985d20867580c6463

RUN mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release           -Dbuild_tests=ON           -Dbuild_examples=OFF           -Dbuild_tools=OFF           -Dpython-bindings=OFF           .. &&     make -j$(nproc)

CMD ["/bin/bash"]
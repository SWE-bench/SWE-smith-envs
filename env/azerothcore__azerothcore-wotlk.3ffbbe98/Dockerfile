FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     cmake     make     gcc     g++     libmysqlclient-dev     libssl-dev     libbz2-dev     libreadline-dev     libncurses-dev     libboost-all-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/azerothcore/azerothcore-wotlk.git /testbed
WORKDIR /testbed
RUN git checkout 3ffbbe981f9a94377b6e13761da45fdd405448d9

RUN mkdir build && cd build &&     cmake ..     -DCMAKE_INSTALL_PREFIX=/testbed/bin     -DBUILD_TESTING=ON &&     make -j$(nproc) unit_tests

CMD ["/bin/bash"]
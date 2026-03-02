# syntax=docker/dockerfile:1
FROM gcc:12-bullseye
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     cmake     git     libboost-system-dev     libboost-thread-dev     libboost-random-dev     libboost-test-dev     libssl-dev     zlib1g-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/zaphoyd__websocketpp.4dfe1be7 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Bypass broken Boost discovery by manually providing paths and libraries
RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DBUILD_TESTS=ON           -DENABLE_CPP11=ON           -DBoost_NO_BOOST_CMAKE=ON           -DBOOST_ROOT=/usr           -DBOOST_INCLUDEDIR=/usr/include           -DBOOST_LIBRARYDIR=/usr/lib/aarch64-linux-gnu           .. &&     make -j$(nproc)

CMD ["/bin/bash"]
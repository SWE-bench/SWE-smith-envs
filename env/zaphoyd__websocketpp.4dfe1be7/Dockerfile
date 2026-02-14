FROM gcc:12-bullseye

RUN apt-get update && apt-get install -y     cmake     git     libboost-system-dev     libboost-thread-dev     libboost-random-dev     libboost-test-dev     libssl-dev     zlib1g-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/zaphoyd/websocketpp.git /testbed
WORKDIR /testbed
RUN git checkout 4dfe1be74e684acca19ac1cf96cce0df9eac2a2d

# Bypass broken Boost discovery by manually providing paths and libraries
RUN mkdir build && cd build &&     cmake -DBUILD_TESTS=ON           -DENABLE_CPP11=ON           -DBoost_NO_BOOST_CMAKE=ON           -DBOOST_ROOT=/usr           -DBOOST_INCLUDEDIR=/usr/include           -DBOOST_LIBRARYDIR=/usr/lib/aarch64-linux-gnu           .. &&     make -j$(nproc)

CMD ["/bin/bash"]
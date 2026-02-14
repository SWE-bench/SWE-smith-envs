FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     python3     python3-pip     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/google/benchmark.git /testbed
WORKDIR /testbed
RUN git checkout eed8f5c682ed70d596b2b07c68b1588ecab3b24a

RUN mkdir build && cd build &&     cmake -DBENCHMARK_DOWNLOAD_DEPENDENCIES=ON           -DBENCHMARK_ENABLE_TESTING=ON           -DBENCHMARK_ENABLE_GTEST_TESTS=ON           -DCMAKE_BUILD_TYPE=Release .. &&     make -j$(nproc)

CMD ["/bin/bash"]
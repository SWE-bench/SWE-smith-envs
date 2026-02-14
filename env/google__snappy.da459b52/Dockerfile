FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/google/snappy.git /testbed
WORKDIR /testbed
RUN git checkout da459b5263676ccf0dc65a3fcf93fb876e09baac

RUN mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release           -DSNAPPY_BUILD_TESTS=ON           -DSNAPPY_BUILD_BENCHMARKS=OFF           .. &&     make -j$(nproc)

CMD ["/bin/bash"]
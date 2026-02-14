FROM gcc:11

RUN apt-get update && apt-get install -y git cmake build-essential && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/Tencent/rapidjson.git /testbed
WORKDIR /testbed
RUN git checkout 24b5e7a8b27f42fa16b96fc70aade9106cf7102f

RUN mkdir build && cd build &&     cmake -DRAPIDJSON_BUILD_TESTS=ON -DRAPIDJSON_BUILD_EXAMPLES=OFF -DRAPIDJSON_BUILD_THIRDPARTY_GTEST=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
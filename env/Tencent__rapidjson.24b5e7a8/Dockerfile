# syntax=docker/dockerfile:1
FROM gcc:11
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git cmake build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/Tencent__rapidjson.24b5e7a8 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DRAPIDJSON_BUILD_TESTS=ON -DRAPIDJSON_BUILD_EXAMPLES=OFF -DRAPIDJSON_BUILD_THIRDPARTY_GTEST=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
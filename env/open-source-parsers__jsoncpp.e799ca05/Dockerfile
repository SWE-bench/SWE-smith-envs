# syntax=docker/dockerfile:1
FROM gcc:11
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y cmake python3 git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/open-source-parsers__jsoncpp.e799ca05 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DJSONCPP_WITH_TESTS=ON -DJSONCPP_WITH_POST_BUILD_UNITTEST=OFF .. &&     make -j$(nproc)

CMD ["/bin/bash"]
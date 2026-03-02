# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/leejet__stable-diffusion.cpp.f0f641a1 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Add enable_testing() to the root CMakeLists.txt to allow ctest to find submodule tests
RUN --mount=type=ssh,required=false sed -i '1ienable_testing()' CMakeLists.txt

RUN --mount=type=ssh,required=false mkdir build && cd build && cmake -DGGML_BUILD_TESTS=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ggerganov__ggwave.3b877d07 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git fetch --all --tags
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build && cmake -DGGWAVE_BUILD_TESTS=ON -DGGWAVE_BUILD_EXAMPLES=OFF .. && make

CMD ["/bin/bash"]
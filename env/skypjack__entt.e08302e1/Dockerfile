# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     cmake     git     build-essential     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/skypjack__entt.e08302e1 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build_dir && cd build_dir &&     cmake -DENTT_BUILD_TESTING=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
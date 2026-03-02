# syntax=docker/dockerfile:1
FROM gcc:11
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     cmake     git     pkg-config     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/microsoft__GSL.756c91ab /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DGSL_TEST=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
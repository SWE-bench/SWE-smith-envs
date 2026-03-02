# syntax=docker/dockerfile:1
FROM oven/bun:1.2.18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/OpenCut-app__OpenCut.e84c0cfd.git /testbed
WORKDIR /testbed
# RUN git checkout e84c0cfda6784abb9bcb72aae757233cd8951780
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false bun install

CMD ["/bin/bash"]
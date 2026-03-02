# syntax=docker/dockerfile:1
FROM oven/bun:1.1-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/thedotmack__claude-mem.1341e93f.git /testbed
WORKDIR /testbed
# RUN git checkout 1341e93fcab15b9caf48bc947d8521b4a97515d8
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false bun install

CMD ["/bin/bash"]
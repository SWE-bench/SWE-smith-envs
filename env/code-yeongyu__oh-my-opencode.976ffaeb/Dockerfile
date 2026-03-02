# syntax=docker/dockerfile:1
FROM oven/bun:latest
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/code-yeongyu__oh-my-opencode.976ffaeb.git /testbed
WORKDIR /testbed
# RUN git checkout 976ffaeb0da5fe3151e71b65fa2c4fa75e31c384
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false bun install

CMD ["/bin/bash"]
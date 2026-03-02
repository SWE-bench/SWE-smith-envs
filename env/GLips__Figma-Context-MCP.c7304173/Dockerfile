# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.10.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/GLips__Figma-Context-MCP.c7304173.git /testbed
WORKDIR /testbed
# RUN git checkout c73041730cb2b288a32c6c6ba4b48d8970841659
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["pnpm", "start"]
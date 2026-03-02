# syntax=docker/dockerfile:1
FROM node:22-bullseye-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.22.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/n8n-io__n8n.cfd59cc5.git /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install --frozen-lockfile
RUN --mount=type=ssh,required=false pnpm turbo run build --filter=n8n-workflow --filter=n8n-core

CMD ["/bin/bash"]
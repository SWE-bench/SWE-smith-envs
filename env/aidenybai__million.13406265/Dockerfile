# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false corepack enable && corepack prepare pnpm@9.1.4 --activate

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/aidenybai__million.13406265.git /testbed
WORKDIR /testbed
# RUN git checkout 1340626556600ae75c352aa6a30ac6c1f96fe97b
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
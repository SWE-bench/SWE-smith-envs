# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"
RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@10.14.0
RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ourongxing__newsnow.951241bf.git /testbed
WORKDIR /testbed
# RUN git checkout 951241bf1be2b09d6e7b0ac8aa63a251ecc2e2b8
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install --no-frozen-lockfile
CMD ["pnpm", "dev"]
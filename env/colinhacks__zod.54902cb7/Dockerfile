# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@10.12.1

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/colinhacks__zod.54902cb7.git /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
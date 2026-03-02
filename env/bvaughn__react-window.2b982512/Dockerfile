# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false corepack enable && corepack prepare pnpm@latest --activate

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/bvaughn__react-window.2b982512.git /testbed
WORKDIR /testbed
# RUN git checkout 2b982512ffee2fdf73466b087b3715e98b2191f2
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
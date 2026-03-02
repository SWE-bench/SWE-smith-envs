# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/typescript-eslint__typescript-eslint.8a95834b.git /testbed
WORKDIR /testbed
# RUN git checkout 8a95834bb5fd818cc049390e4cb57196717a011f
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Use --ignore-scripts to skip the problematic postinstall during build
ENV NX_DAEMON=false
RUN --mount=type=ssh,required=false pnpm install --ignore-scripts && pnpm store prune

CMD ["/bin/bash"]
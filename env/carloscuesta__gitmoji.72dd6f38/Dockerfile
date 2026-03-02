# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@8.6.2

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/carloscuesta__gitmoji.72dd6f38.git /testbed
WORKDIR /testbed
# RUN git checkout 72dd6f383cc0c97071683a77f01dc1d6d89f8d06
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install --no-frozen-lockfile
CMD ["/bin/bash"]
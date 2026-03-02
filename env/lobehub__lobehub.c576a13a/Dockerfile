# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false corepack enable && corepack prepare pnpm@10.20.0 --activate

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/lobehub__lobehub.c576a13a.git /testbed
WORKDIR /testbed
# RUN git checkout c576a13a4366533b32dd03307f6babd321055819
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install --no-frozen-lockfile

CMD ["/bin/bash"]
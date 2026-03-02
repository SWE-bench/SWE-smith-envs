# syntax=docker/dockerfile:1
FROM node:22-bookworm-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/backstage__backstage.f2fc1def.git /testbed
WORKDIR /testbed
# RUN git checkout f2fc1def806edca2a16f64c77a6521721b8e24d6
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && corepack prepare yarn@4.8.1 --activate

RUN --mount=type=ssh,required=false yarn install --immutable

CMD ["/bin/bash"]
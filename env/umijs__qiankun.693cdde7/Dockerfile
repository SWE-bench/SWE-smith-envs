# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@9.15.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/umijs__qiankun.693cdde7.git /testbed
WORKDIR /testbed
# RUN git checkout 693cdde75049830820ff9490dd267f9701db25e6
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
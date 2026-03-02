# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/markmap__markmap.205367a2.git /testbed
WORKDIR /testbed
# RUN git checkout 205367a24603dc187f67da1658940c6cade20dce
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install && pnpm build:types && pnpm build:js

CMD ["/bin/bash"]
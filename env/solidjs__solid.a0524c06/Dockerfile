# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@9.15.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/solidjs__solid.a0524c06.git /testbed
WORKDIR /testbed
# RUN git checkout a0524c066d8f105e0c6c7b971490b162e9e552b1
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
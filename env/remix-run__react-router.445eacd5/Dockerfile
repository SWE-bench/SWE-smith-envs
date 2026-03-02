# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /testbed

RUN --mount=type=ssh,required=false npm install -g pnpm@9.10.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/remix-run__react-router.445eacd5.git /testbed
WORKDIR /testbed
# RUN git checkout 445eacd5b37e9ae9051c3415467eca77cbf3a5d7
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
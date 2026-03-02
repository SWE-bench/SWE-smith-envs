# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@10

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/pmndrs__zustand.99379a6e.git /testbed
WORKDIR /testbed
# RUN git checkout 99379a6eef0d1a9d57d5a96124a0fb129f38439a
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
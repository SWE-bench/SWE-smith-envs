# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@9.12.2

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/trpc__trpc.5845dc28.git /testbed
WORKDIR /testbed
# RUN git checkout 5845dc28c978df928b2233301cadedd032edf784
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
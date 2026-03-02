# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/statelyai__xstate.1710ace0.git /testbed
WORKDIR /testbed
# RUN git checkout 1710ace037547b73091a05181534bea9c0a6500a
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
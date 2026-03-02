# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@10.28.2

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/nuxt__nuxt.06533105.git /testbed
WORKDIR /testbed
# RUN git checkout 06533105e2e68e0f59440291762a7d5c3b0cb65b
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

RUN --mount=type=ssh,required=false pnpm build:stub

CMD ["/bin/bash"]
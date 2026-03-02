# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.2.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/radix-ui__primitives.90751370.git /testbed
WORKDIR /testbed
# RUN git checkout 907513701a75b11a115563f9554ac6e8147bf2db
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
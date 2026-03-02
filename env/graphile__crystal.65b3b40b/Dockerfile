# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/graphile__crystal.65b3b40b.git /testbed
WORKDIR /testbed
# RUN git checkout 65b3b40b33853b62366c2ba378cdb83343b0b0ac
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && corepack prepare yarn@4.12.0 --activate

RUN --mount=type=ssh,required=false yarn install
RUN --mount=type=ssh,required=false yarn build

CMD ["/bin/bash"]
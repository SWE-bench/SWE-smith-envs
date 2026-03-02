# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/tldraw__tldraw.9b55464f.git /testbed
WORKDIR /testbed
# RUN git checkout 9b55464faea93bc67a374eedb04b3c1c535224df
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && yarn set version 4.12.0
RUN --mount=type=ssh,required=false yarn install --immutable
CMD ["/bin/bash"]
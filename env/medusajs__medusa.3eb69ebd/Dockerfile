# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/medusajs__medusa.3eb69ebd.git /testbed
WORKDIR /testbed
# RUN git checkout 3eb69ebd3145d69be914f0ae15f6a02940ad5d0b
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && yarn install

RUN --mount=type=ssh,required=false yarn build

CMD ["/bin/bash"]
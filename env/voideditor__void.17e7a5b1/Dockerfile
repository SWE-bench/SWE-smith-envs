# syntax=docker/dockerfile:1
FROM node:20-bookworm
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     pkg-config     libx11-dev     libxkbfile-dev     libsecret-1-dev     libkrb5-dev     python3     make     g++     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/voideditor__void.17e7a5b1.git /testbed
WORKDIR /testbed
# RUN git checkout 17e7a5b1524345b19ab4ee38ec4f9b1b75a1bd00
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install

# Build React components first (required by main compilation)
RUN --mount=type=ssh,required=false npm run buildreact

RUN --mount=type=ssh,required=false npm run compile

CMD ["/bin/bash"]
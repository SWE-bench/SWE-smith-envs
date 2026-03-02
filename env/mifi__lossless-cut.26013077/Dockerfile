# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     wget     pkg-config     libnss3     libatk1.0-0     libatk-bridge2.0-0     libcups2     libdrm2     libxcomposite1     libxdamage1     libxrandr2     libgbm1     libasound2     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/mifi__lossless-cut.26013077.git /testbed
WORKDIR /testbed
# RUN git checkout 26013077affafc6160a64bc875762c02f0c3ca89
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && yarn install

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/lerna__lerna.215ff002.git /testbed
WORKDIR /testbed
# RUN git checkout 215ff0020a53ee7fe67ee954286aeefd24ea761c
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false npm ci --include=dev
CMD ["/bin/bash"]
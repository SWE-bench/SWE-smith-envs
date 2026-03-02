# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

WORKDIR /testbed

RUN --mount=type=ssh,required=false corepack enable

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/transloadit__uppy.89fbbc72.git /testbed
WORKDIR /testbed
# RUN git checkout 89fbbc7224d10f91a22381c7b1887ac6aa37c27c
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:24
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/MetaMask__metamask-extension.5b029fa6.git /testbed
WORKDIR /testbed
# RUN git checkout 5b029fa6759efdaa18c597efc253ad38d2822488
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && yarn set version 4.12.0

RUN --mount=type=ssh,required=false yarn install --immutable

CMD ["/bin/bash"]
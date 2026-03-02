# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/szimek__signature_pad.43989b6d.git /testbed
WORKDIR /testbed
# RUN git checkout 43989b6d222654966d53d70513cddbf1b98afec0
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && yarn install

CMD ["/bin/bash"]
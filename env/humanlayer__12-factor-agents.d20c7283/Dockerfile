# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/humanlayer__12-factor-agents.d20c7283.git /testbed
WORKDIR /testbed
# RUN git checkout d20c728368bf9c189d6d7aab704744decb6ec0cc
RUN --mount=type=ssh,required=false git submodule update --init --recursive

WORKDIR /testbed/packages/walkthroughgen
RUN --mount=type=ssh,required=false npm install

WORKDIR /testbed
CMD ["/bin/bash"]
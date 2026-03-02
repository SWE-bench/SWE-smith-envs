# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm

WORKDIR /testbed
RUN --mount=type=ssh,required=false git config --global url."https://github.com/".insteadOf "git@github.com:" &&     git clone https://github.com/swesmith/date-fns__date-fns.dd663983.git . &&     git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
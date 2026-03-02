# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@9.0.6

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/shadcn-ui__ui.28ebf1b8.git /testbed
WORKDIR /testbed
# RUN git checkout 28ebf1b88a55c8897266e782c5f077ef7e175483
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
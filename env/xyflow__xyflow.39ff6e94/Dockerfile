# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@9.2.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/xyflow__xyflow.39ff6e94.git /testbed
WORKDIR /testbed
# RUN git checkout 39ff6e94b518ae82c9c5d973e71055c8ee8e90be
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install
RUN --mount=type=ssh,required=false pnpm build:all

CMD ["/bin/bash"]
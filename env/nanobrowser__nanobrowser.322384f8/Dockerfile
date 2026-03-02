# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@9.15.1

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/nanobrowser__nanobrowser.322384f8.git /testbed
WORKDIR /testbed
# RUN git checkout 322384f8b4d48d8614343e51efca68c85e64f90b
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install --frozen-lockfile

CMD ["/bin/bash"]
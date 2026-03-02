# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@10.17.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/RSSNext__Folo.62efdd29.git /testbed
WORKDIR /testbed
# RUN git checkout 62efdd29b21fce9681e4e1497b6ab7084e5a41b0
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
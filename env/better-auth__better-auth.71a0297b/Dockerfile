# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.28.2

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/better-auth__better-auth.71a0297b.git /testbed
WORKDIR /testbed
# RUN git checkout 71a0297b4c6e102a3a516d706ef645227f633115
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
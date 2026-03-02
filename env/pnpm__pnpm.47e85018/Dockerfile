# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     curl     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@11.0.0-alpha.3

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/pnpm__pnpm.47e85018.git /testbed
WORKDIR /testbed
# RUN git checkout 47e850180adcde91978f12a6513218ade26857f4
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install && pnpm run compile-only

CMD ["/bin/bash"]
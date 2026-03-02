# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@9.15.9

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/formbricks__formbricks.4b0c5186.git /testbed
WORKDIR /testbed
# RUN git checkout 4b0c518683fad1cfc292feab1e4e3b0fe82ccaca
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

RUN --mount=type=ssh,required=false pnpm exec prisma generate

CMD ["/bin/bash"]
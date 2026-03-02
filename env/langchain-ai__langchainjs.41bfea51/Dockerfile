# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.14.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/langchain-ai__langchainjs.41bfea51.git /testbed
WORKDIR /testbed
# RUN git checkout 41bfea51cf119573a3b956ee782d2731fe71c681
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
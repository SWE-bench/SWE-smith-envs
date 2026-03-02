# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@9.15.9

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/labring__FastGPT.cfded3af.git /testbed
WORKDIR /testbed
# RUN git checkout cfded3af41b2823fd2654d90ee30ae4b63a19924
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
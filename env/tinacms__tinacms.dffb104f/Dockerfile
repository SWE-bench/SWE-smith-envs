# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@9.15.5

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/tinacms__tinacms.dffb104f.git /testbed
WORKDIR /testbed
# RUN git checkout dffb104f1850cabc15f495a5868a33a66295965a
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
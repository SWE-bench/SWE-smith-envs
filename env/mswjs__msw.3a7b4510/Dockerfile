# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@9.14.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/mswjs__msw.3a7b4510.git /testbed
WORKDIR /testbed
# RUN git checkout 3a7b4510138bc6e7ab5078f53e623d6a25cfd9ac
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:20-alpine
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apk add --no-cache git python3 make g++ build-base
RUN --mount=type=ssh,required=false npm install -g pnpm@10.9.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/privatenumber__tsx.3a3a0071.git /testbed
WORKDIR /testbed
# RUN git checkout 3a3a0071c78eee94b7c73776729389e38056c21a
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install
RUN --mount=type=ssh,required=false pnpm build

CMD ["/bin/bash"]
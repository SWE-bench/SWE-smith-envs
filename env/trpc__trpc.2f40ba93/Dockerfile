# syntax=docker/dockerfile:1
FROM node:22
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"
RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git procps && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm
RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/trpc__trpc.2f40ba93 /testbed
WORKDIR /testbed
# RUN git checkout 2f40ba935ad7f7d29eec3f9c45d353450b43e852
RUN --mount=type=ssh,required=false pnpm install

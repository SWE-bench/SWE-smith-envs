# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/Unleash__unleash.120f50bc.git /testbed
WORKDIR /testbed
# RUN git checkout 120f50bcd0e939699162d572c975974a57ea7cfc
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && yarn install
RUN --mount=type=ssh,required=false yarn run build:backend

RUN --mount=type=ssh,required=false printf 'import { defineConfig } from "vitest/config";\nexport default defineConfig({ test: { globals: true, environment: "node" } });\n' > vitest.unit.config.ts

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/alan2207__bulletproof-react.63f68340.git /testbed
WORKDIR /testbed
# RUN git checkout 63f68340798e1f0e8f3d04732152a5146f827d04
RUN --mount=type=ssh,required=false git submodule update --init --recursive

WORKDIR /testbed/apps/react-vite

RUN --mount=type=ssh,required=false corepack enable && yarn install --frozen-lockfile

ENV VITE_APP_API_URL=http://localhost:3000

CMD ["yarn", "test"]
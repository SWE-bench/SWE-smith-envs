# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/homebridge__homebridge.3a341e08.git /testbed
WORKDIR /testbed
# RUN git checkout 3a341e0838c99abfdf7a2d76e5e1e2a2af7ccb09
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install && npm run build

CMD ["npm", "test"]
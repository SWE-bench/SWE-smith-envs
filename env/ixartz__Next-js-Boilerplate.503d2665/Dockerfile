# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ixartz__Next-js-Boilerplate.503d2665.git /testbed
WORKDIR /testbed
# RUN git checkout 503d2665054781168e8d3704b4a56f37a2cdb750
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install

CMD ["npm", "start"]
# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/umami-software__umami.860e6390.git /testbed
WORKDIR /testbed
# RUN git checkout 860e6390f14e7572b27d3ea1230258cff8c9bc96
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install --legacy-peer-deps

CMD ["npm", "start"]
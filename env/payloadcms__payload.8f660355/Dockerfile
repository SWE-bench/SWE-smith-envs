# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.27.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/payloadcms__payload.8f660355.git /testbed
WORKDIR /testbed
# RUN git checkout 8f66035522f568d42098a7ad525e7bf700662b9a
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
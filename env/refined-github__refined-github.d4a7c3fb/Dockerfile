# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/refined-github__refined-github.d4a7c3fb.git /testbed
WORKDIR /testbed
# RUN git checkout d4a7c3fbfebff5f39a3760effbea7273dea0d01c
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm ci

CMD ["/bin/bash"]
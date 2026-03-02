# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"
RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git procps && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/kentcdodds__cross-env.9951937a /testbed
WORKDIR /testbed
# RUN git checkout 9951937a7d3d4a1ea7bd2ce3133bcfb687125813
RUN --mount=type=ssh,required=false npm install

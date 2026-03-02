# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@10

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/directus__directus.ac922d18.git /testbed
WORKDIR /testbed
# RUN git checkout ac922d18f6039582a18737a6dc6d1d9a08a194e8
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
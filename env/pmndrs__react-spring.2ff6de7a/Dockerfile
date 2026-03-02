# syntax=docker/dockerfile:1
FROM node:18-bullseye
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/pmndrs__react-spring.2ff6de7a.git /testbed
WORKDIR /testbed
# RUN git checkout 2ff6de7a3b295a79475113824b0962ebf3ca5249
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && yarn install

CMD ["/bin/bash"]
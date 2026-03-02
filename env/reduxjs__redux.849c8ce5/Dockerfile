# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/reduxjs__redux.849c8ce5.git /testbed
WORKDIR /testbed
# RUN git checkout 849c8ce527e6e39a7264a71ccc9bdbc86553ba93
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && corepack prepare yarn@4.4.1 --activate

RUN --mount=type=ssh,required=false yarn install

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/reduxjs__redux-thunk.184205d4.git /testbed
WORKDIR /testbed
# RUN git checkout 184205d49f707c6f203269e0d39ad85824801816
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && yarn install

CMD ["/bin/bash"]
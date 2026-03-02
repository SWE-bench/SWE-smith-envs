# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ChatGPTNextWeb__NextChat.c3b8c158.git /testbed
WORKDIR /testbed
# RUN git checkout c3b8c1587c04fff05f7b42276a43016e87771527
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false yarn install
CMD ["/bin/bash"]
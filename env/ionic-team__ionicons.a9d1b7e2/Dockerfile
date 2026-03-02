# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ionic-team__ionicons.a9d1b7e2.git /testbed
WORKDIR /testbed
# RUN git checkout a9d1b7e23d7b9dec29f2041897ab14b2cef55064
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false npm install
CMD ["/bin/bash"]
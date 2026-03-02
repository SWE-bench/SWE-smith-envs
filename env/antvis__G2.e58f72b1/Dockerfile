# syntax=docker/dockerfile:1
FROM node:18-alpine
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apk add --no-cache git python3 make g++ build-base

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/antvis__G2.e58f72b1.git /testbed
WORKDIR /testbed
# RUN git checkout e58f72b19aa47834423d55cb16c8d9df634424ba
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install --no-audit --no-fund && npm cache clean --force

CMD ["/bin/bash"]
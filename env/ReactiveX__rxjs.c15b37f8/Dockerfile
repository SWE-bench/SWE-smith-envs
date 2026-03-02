# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ReactiveX__rxjs.c15b37f8.git /testbed
WORKDIR /testbed
# RUN git checkout c15b37f81ba5f5abea8c872b0189a70b150df4cb
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --frozen-lockfile

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/streamich__react-use.9ef95352.git /testbed
WORKDIR /testbed
# RUN git checkout 9ef95352e459dd2920b0492c63c39863024ee852
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --frozen-lockfile

CMD ["/bin/bash"]
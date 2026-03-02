# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/typestack__class-validator.977d2c70.git /testbed
WORKDIR /testbed
# RUN git checkout 977d2c707930db602b6450d0c03ee85c70756f1f
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm ci

CMD ["/bin/bash"]
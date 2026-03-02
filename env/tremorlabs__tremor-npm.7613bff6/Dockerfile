# syntax=docker/dockerfile:1
FROM node:18
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /testbed

RUN --mount=type=ssh,required=false npm install -g pnpm

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/tremorlabs__tremor-npm.7613bff6.git /testbed
WORKDIR /testbed
# RUN git checkout 7613bff631f713616b7b2ae52fb96dbc8e3dcc97
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
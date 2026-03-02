# syntax=docker/dockerfile:1
FROM node:18
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false npm install -g pnpm@10.0.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/styled-components__styled-components.2bd64021.git /testbed
WORKDIR /testbed
# RUN git checkout 2bd64021c88ae6453a44363d4df56b2c62142649
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install
CMD ["/bin/bash"]
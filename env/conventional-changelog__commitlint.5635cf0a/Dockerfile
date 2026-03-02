# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/conventional-changelog__commitlint.5635cf0a.git /testbed
WORKDIR /testbed
# RUN git checkout 5635cf0ab885005aa56f2917b9db5e9c2259722d
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install && yarn build

CMD ["/bin/bash"]
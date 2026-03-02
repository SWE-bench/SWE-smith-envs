# syntax=docker/dockerfile:1
FROM node:22-bookworm
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     pkg-config     libx11-dev     libxkbfile-dev     libsecret-1-dev     libkrb5-dev     python3     make     g++     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/microsoft__vscode.4166e90a.git /testbed
WORKDIR /testbed
# RUN git checkout 4166e90ac290db7f77800a4f6702903ea4eed476
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install

CMD ["/bin/bash"]
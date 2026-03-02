# syntax=docker/dockerfile:1
FROM node:22-bookworm-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     build-essential     pkg-config     libsecret-1-dev     libx11-dev     libxkbfile-dev     libkrb5-dev     quilt     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/coder__code-server.e90504b8.git /testbed
WORKDIR /testbed
# RUN git checkout e90504b8cf1d73c36d902bbaaec7bab33f15c42e
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install

CMD ["/bin/bash"]
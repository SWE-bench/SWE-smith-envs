# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     pkg-config     libusb-1.0-0-dev     libudev-dev     bzip2     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/balena-io__etcher.a79db1db.git /testbed
WORKDIR /testbed
# RUN git checkout a79db1db6b940dbc4616df2d760cb25a81c1133f
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install

CMD ["/bin/bash"]
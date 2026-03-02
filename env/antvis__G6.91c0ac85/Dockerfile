# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     libcairo2-dev     libpango1.0-dev     libjpeg-dev     libgif-dev     librsvg2-dev     build-essential     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/antvis__G6.91c0ac85.git /testbed
WORKDIR /testbed
# RUN git checkout 91c0ac85e4e636a05bd1a3c5e56a4928d1242a9b
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
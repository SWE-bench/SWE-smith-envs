# syntax=docker/dockerfile:1
FROM node:20-bookworm-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     pkg-config     libsqlite3-dev     bash     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/cline__cline.b5b503dd.git /testbed
WORKDIR /testbed
# RUN git checkout b5b503dd50fef96e846ed618d3146f097c27194c
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm run install:all

RUN --mount=type=ssh,required=false npm run protos

CMD ["/bin/bash"]
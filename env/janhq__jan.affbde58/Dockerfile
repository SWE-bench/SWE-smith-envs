# syntax=docker/dockerfile:1
FROM node:20-bookworm
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

WORKDIR /testbed

RUN --mount=type=ssh,required=false corepack enable

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/janhq__jan.affbde58.git /testbed
WORKDIR /testbed
# RUN git checkout affbde587abb29497017afd63fa79a72ede0780a
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install

CMD ["/bin/bash"]
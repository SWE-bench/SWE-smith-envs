# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

WORKDIR /testbed

RUN --mount=type=ssh,required=false corepack enable

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/strapi__strapi.e5b87a54.git /testbed
WORKDIR /testbed
# RUN git checkout e5b87a54008c9de2b3286a4774635dcf69895d9b
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --immutable

RUN --mount=type=ssh,required=false yarn build

CMD ["/bin/bash"]
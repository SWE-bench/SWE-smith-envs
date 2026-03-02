# syntax=docker/dockerfile:1
FROM node:18
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/pmndrs__react-three-fiber.9525ea0d.git /testbed
WORKDIR /testbed
# RUN git checkout 9525ea0d63c8b42ab6256b82ce068a394f88b1f8
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --frozen-lockfile

CMD ["/bin/bash"]
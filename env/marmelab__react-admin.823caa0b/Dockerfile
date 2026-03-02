# syntax=docker/dockerfile:1
FROM node:20-bullseye-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/marmelab__react-admin.823caa0b.git /testbed
WORKDIR /testbed
# RUN git checkout 823caa0b6489fc8133685525e22d30ddf57643fa
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable && corepack prepare yarn@4.0.2 --activate

RUN --mount=type=ssh,required=false yarn install

CMD ["/bin/bash"]
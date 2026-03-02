# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/bluesky-social__social-app.cbd48c85.git /testbed
WORKDIR /testbed
# RUN git checkout cbd48c855a57f1a294f4b7362eaadb505bf5f9f6
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --network-timeout 1000000

CMD ["/bin/bash"]
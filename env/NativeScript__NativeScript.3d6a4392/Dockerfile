# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/NativeScript__NativeScript.3d6a4392.git /testbed
WORKDIR /testbed
# RUN git checkout 3d6a4392f6008e4f43f8f5439a256c50e3707101
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install --legacy-peer-deps

CMD ["/bin/bash"]
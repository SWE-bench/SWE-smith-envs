# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/invertase__react-native-firebase.7df61307.git /testbed
WORKDIR /testbed
# RUN git checkout 7df61307f19db84df72c4d3587a8994aeb7d3fce
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false corepack enable

RUN --mount=type=ssh,required=false yarn install

CMD ["/bin/bash"]
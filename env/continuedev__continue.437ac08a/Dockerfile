# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/continuedev__continue.437ac08a.git /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install
RUN --mount=type=ssh,required=false cd core && npm install
RUN --mount=type=ssh,required=false cd gui && npm install

CMD ["/bin/bash"]
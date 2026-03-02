# syntax=docker/dockerfile:1
FROM node:18
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     libasound2     libgbm1     libgtk-3-0     libnss3     xvfb     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/foambubble__foam.2cac8162.git /testbed
WORKDIR /testbed
# RUN git checkout 2cac816272157f3a964b30adf4f29c0b2973cce8
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install && yarn build

CMD ["/bin/bash"]
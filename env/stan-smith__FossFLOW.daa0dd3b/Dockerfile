# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/stan-smith__FossFLOW.daa0dd3b.git /testbed
WORKDIR /testbed
# RUN git checkout daa0dd3b76162278f79f1a2c1b063df1505c8ce1
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install

CMD ["/bin/bash"]
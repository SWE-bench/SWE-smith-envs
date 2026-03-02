# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/hexojs__hexo.1fd997c3.git /testbed
WORKDIR /testbed
# RUN git checkout 1fd997c3ad772ab7ed85b71b886d55248d92bb68
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install && npm run build

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false npm install -g pnpm@9.15.4

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ueberdosis__tiptap.2d6de06c.git /testbed
WORKDIR /testbed
# RUN git checkout 2d6de06c34c239e78fedd6bd2a0bcea42d0fdbfa
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
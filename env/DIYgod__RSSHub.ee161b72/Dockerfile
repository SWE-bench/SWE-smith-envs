# syntax=docker/dockerfile:1
FROM node:22
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false corepack enable && corepack prepare pnpm@10.28.2 --activate

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/DIYgod__RSSHub.ee161b72.git /testbed
WORKDIR /testbed
# RUN git checkout ee161b72e4da5200213850cb03defd50e4452ecf
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false pnpm install

CMD ["pnpm", "start"]
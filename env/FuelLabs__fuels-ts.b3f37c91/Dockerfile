# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false npm install -g pnpm@9.4.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/FuelLabs__fuels-ts.b3f37c91.git /testbed
WORKDIR /testbed
# RUN git checkout b3f37c91aca4aa9d5e4c0d3967f66237190826ea
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install && pnpm build:packages

CMD ["/bin/bash"]
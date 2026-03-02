# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.15.1

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/prisma__prisma.f6b1ac64.git /testbed
WORKDIR /testbed
# RUN git checkout f6b1ac64d54f84060e5d2676f1f29031d9020984
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

RUN --mount=type=ssh,required=false pnpm turbo build --filter=@prisma/get-platform...

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false npm install -g pnpm@10.6.3

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/drizzle-team__drizzle-orm.a086f59f.git /testbed
WORKDIR /testbed
# RUN git checkout a086f59fba7f46f3a077893ba912c99e91eaa760
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
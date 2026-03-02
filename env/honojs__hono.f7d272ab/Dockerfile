# syntax=docker/dockerfile:1
FROM oven/bun:latest
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/honojs__hono.f7d272ab.git /testbed
WORKDIR /testbed
# RUN git checkout f7d272abe1644e50ab5fe9cb53f5965c35d77226
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false bun install

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     curl     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:${PATH}"

RUN --mount=type=ssh,required=false npm install -g pnpm@10.13.1

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/CopilotKit__CopilotKit.fd993504.git /testbed
WORKDIR /testbed
# RUN git checkout fd993504783b31ed2374252d6667c47ff9b32980
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
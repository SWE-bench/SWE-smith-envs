# syntax=docker/dockerfile:1
FROM node:22-bullseye-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.28.2

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/vitejs__vite.8b47ff76.git /testbed
WORKDIR /testbed
# RUN git checkout 8b47ff76d28630b4dc39c77fbd2762b4c36ad23d
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install --frozen-lockfile
RUN --mount=type=ssh,required=false pnpm run build

CMD ["/bin/bash"]
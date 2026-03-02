# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@10.17.1

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/Effect-TS__effect.5df4da10.git /testbed
WORKDIR /testbed
# RUN git checkout 5df4da10de444f379a166f4b28721e75100bb838
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Remove the problematic @effect/docgen dependency that's causing 404
RUN --mount=type=ssh,required=false sed -i '/"@effect\/docgen":/d' package.json

RUN --mount=type=ssh,required=false pnpm install --no-frozen-lockfile

CMD ["/bin/bash"]
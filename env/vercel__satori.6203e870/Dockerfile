# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     make     g++     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npm install -g pnpm@8.7.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/vercel__satori.6203e870.git /testbed
WORKDIR /testbed
# RUN git checkout 6203e8702acf5ec66c551d01eb46e544c30c1306
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install --frozen-lockfile

# The package has a vendor script that copies yoga.wasm, but pnpm install might have run it. 
# We run it explicitly to be sure.
RUN --mount=type=ssh,required=false pnpm run vendor

CMD ["/bin/bash"]
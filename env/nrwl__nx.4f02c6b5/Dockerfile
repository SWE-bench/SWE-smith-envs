# syntax=docker/dockerfile:1
FROM node:20-alpine
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apk add --no-cache     git     python3     make     g++     curl     bash     libc6-compat

# Install Rust (required by some Nx core logic)
RUN --mount=type=ssh,required=false curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN --mount=type=ssh,required=false npm install -g pnpm

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/nrwl__nx.4f02c6b5.git /testbed
WORKDIR /testbed
# RUN git checkout 4f02c6b56edbe0c1dcb39d65336a6ab332b4a053
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install --no-frozen-lockfile --ignore-scripts --filter nx...

CMD ["/bin/bash"]
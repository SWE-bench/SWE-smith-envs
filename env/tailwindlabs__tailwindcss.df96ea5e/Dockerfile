# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     curl     build-essential     pkg-config     libssl-dev     python3     && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y     && rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.cargo/bin:${PATH}"
ENV PYTHON="/usr/bin/python3"

RUN --mount=type=ssh,required=false npm install -g pnpm@9.6.0

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/tailwindlabs__tailwindcss.df96ea5e.git /testbed
WORKDIR /testbed
# RUN git checkout df96ea5eba94c801a08879cf95837b8a2b317b42
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install

# We skip the full build as it requires specific WASM toolchains that are failing.
# We build only the native components if needed by pnpm install.

CMD ["/bin/bash"]
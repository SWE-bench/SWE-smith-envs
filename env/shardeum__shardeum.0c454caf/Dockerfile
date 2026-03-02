# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ curl && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/shardeum__shardeum.0c454caf.git /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Install dependencies without running scripts first to allow patching
RUN --mount=type=ssh,required=false npm install --ignore-scripts

# Patch the offending Rust file to remove deny(warnings)
RUN --mount=type=ssh,required=false find node_modules -name lib.rs -exec sed -i 's/#!\[deny(warnings)\]//' {} +

RUN --mount=type=ssh,required=false npm install

CMD ["/bin/bash"]
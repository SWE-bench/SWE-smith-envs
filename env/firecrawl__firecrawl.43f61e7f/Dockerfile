# syntax=docker/dockerfile:1
FROM node:22
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     curl     build-essential     pkg-config     python3     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false curl -L https://go.dev/dl/go1.23.4.linux-arm64.tar.gz | tar -C /usr/local -xz
ENV PATH=$PATH:/usr/local/go/bin

ENV RUSTUP_HOME=/usr/local/rustup     CARGO_HOME=/usr/local/cargo     PATH=/usr/local/cargo/bin:$PATH
RUN --mount=type=ssh,required=false curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path     && chmod -R a+w $RUSTUP_HOME $CARGO_HOME

WORKDIR /testbed

RUN --mount=type=ssh,required=false corepack enable

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/firecrawl__firecrawl.43f61e7f.git /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

WORKDIR /testbed/apps/api

RUN --mount=type=ssh,required=false cd sharedLibs/go-html-to-md &&     go build -o libhtml-to-markdown.so -buildmode=c-shared html-to-markdown.go

RUN --mount=type=ssh,required=false pnpm install --no-frozen-lockfile
RUN --mount=type=ssh,required=false pnpm run build

CMD ["/bin/bash"]
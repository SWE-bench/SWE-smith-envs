# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive
ENV CC=/usr/bin/gcc
ENV CXX=/usr/bin/g++

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     autoconf     libtool     pkg-config     cmake     git     curl     gnupg     python3     python3-pip     python-is-python3     libssl-dev     zlib1g-dev     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false curl -L https://github.com/bazelbuild/bazelisk/releases/download/v1.17.0/bazelisk-linux-amd64 -o /usr/local/bin/bazel &&     chmod +x /usr/local/bin/bazel


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/grpc__grpc.9d7a53ea /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Build core libraries. We use --enable_bzlmod=false as gRPC doesn't fully support it yet.
# We build a smaller target to ensure it completes within time limits.
RUN --mount=type=ssh,required=false bazel build --enable_bzlmod=false //:grpc

CMD ["/bin/bash"]
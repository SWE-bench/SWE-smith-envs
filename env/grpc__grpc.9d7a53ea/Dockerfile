FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV CC=/usr/bin/gcc
ENV CXX=/usr/bin/g++

RUN apt-get update && apt-get install -y     build-essential     autoconf     libtool     pkg-config     cmake     git     curl     gnupg     python3     python3-pip     python-is-python3     libssl-dev     zlib1g-dev     && rm -rf /var/lib/apt/lists/*

RUN curl -L https://github.com/bazelbuild/bazelisk/releases/download/v1.17.0/bazelisk-linux-amd64 -o /usr/local/bin/bazel &&     chmod +x /usr/local/bin/bazel


RUN git clone --recurse-submodules https://github.com/grpc/grpc.git /testbed
WORKDIR /testbed
RUN git checkout 9d7a53ea80b719178be5753400e104c3f6ad4afc

# Build core libraries. We use --enable_bzlmod=false as gRPC doesn't fully support it yet.
# We build a smaller target to ensure it completes within time limits.
RUN bazel build --enable_bzlmod=false //:grpc

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     pkg-config     libssl-dev     cmake     python3     unzip     patch     curl     automake     tclsh     perl     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ossrs__srs.6e2392f3 /testbed

WORKDIR /testbed/trunk
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false ./configure --utest && make utest

CMD ["./objs/srs"]
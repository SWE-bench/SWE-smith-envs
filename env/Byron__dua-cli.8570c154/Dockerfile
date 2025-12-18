FROM rust:1.88
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt update && apt install -y wget git build-essential && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/Byron__dua-cli.8570c154 /testbed
WORKDIR /testbed
RUN cargo test --verbose || true

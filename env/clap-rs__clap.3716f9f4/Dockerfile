FROM rust:1.88
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt update && apt install -y wget git build-essential && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/clap-rs__clap.3716f9f4 /testbed
WORKDIR /testbed
RUN make test-full ARGS=--verbose

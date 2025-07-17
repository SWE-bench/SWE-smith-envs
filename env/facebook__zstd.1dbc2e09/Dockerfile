FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
RUN apt-get update && apt-get install -y build-essential cmake git python3 python3-pip valgrind && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/swesmith/facebook__zstd.1dbc2e09 /testbed
WORKDIR /testbed
RUN make

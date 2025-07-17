FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN sed -i 's/^# deb-src/deb-src/' /etc/apt/sources.list
RUN apt update &&     apt install -y pkg-config wget git build-essential libtool automake autoconf tcl bison flex cmake python3 python3-pip python3-venv python-is-python3 &&     rm -rf /var/lib/apt/lists/*
RUN adduser --disabled-password --gecos 'dog' nonroot
RUN git clone https://github.com/swesmith/valkey-io__valkey.fc7c04e4 /testbed
WORKDIR /testbed
RUN cd deps/jemalloc && ./autogen.sh
RUN make distclean
RUN make

# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     autoconf     automake     autotools-dev     autopoint     libtool     pkg-config     libgnutls28-dev     libssh2-1-dev     libc-ares-dev     libxml2-dev     zlib1g-dev     libsqlite3-dev     libcppunit-dev     python3-sphinx     gettext     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/aria2__aria2.b4fd7cb1 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false autoreconf -i &&     ./configure &&     make -j$(nproc) &&     make -C test aria2c

CMD ["/bin/bash"]
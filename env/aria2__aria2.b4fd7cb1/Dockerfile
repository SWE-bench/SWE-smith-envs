FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     autoconf     automake     autotools-dev     autopoint     libtool     pkg-config     libgnutls28-dev     libssh2-1-dev     libc-ares-dev     libxml2-dev     zlib1g-dev     libsqlite3-dev     libcppunit-dev     python3-sphinx     gettext     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/aria2/aria2.git /testbed
WORKDIR /testbed
RUN git checkout b4fd7cb1ca03e38ad9d7ab9308b8200cb1d41c25

RUN autoreconf -i &&     ./configure &&     make -j$(nproc) &&     make -C test aria2c

CMD ["/bin/bash"]
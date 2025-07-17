FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive     DEBCONF_NONINTERACTIVE_SEEN=true     LC_ALL=C.UTF-8     LANG=C.UTF-8
ENV TZ=Etc/UTC
RUN apt-get update     && apt-get install -y build-essential autoconf libtool git     && apt-get clean     && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/swesmith/jqlang__jq.b9e19de7 /testbed
WORKDIR /testbed
RUN git submodule update --init --recursive
RUN autoreconf -i     && ./configure     --disable-docs     --with-oniguruma=builtin     --enable-static     --enable-all-static     --prefix=/usr/local
RUN make clean
RUN touch src/parser.y src/lexer.l
RUN make -j$(nproc)

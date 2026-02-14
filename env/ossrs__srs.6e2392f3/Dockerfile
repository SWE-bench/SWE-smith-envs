FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     pkg-config     libssl-dev     cmake     python3     unzip     patch     curl     automake     tclsh     perl     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/ossrs/srs.git /testbed

WORKDIR /testbed/trunk
RUN git checkout 6e2392f3667512e8c75899dd7d71294785ea0cf7
RUN ./configure --utest && make utest

CMD ["./objs/srs"]
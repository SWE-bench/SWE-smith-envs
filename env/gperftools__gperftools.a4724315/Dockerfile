FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     cmake     autoconf     automake     libtool     pkg-config     ca-certificates     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/gperftools/gperftools.git /testbed
WORKDIR /testbed
RUN git checkout a47243150ec41097602730ff8779fafcc172d1fb

RUN mkdir build && cd build && cmake -DBUILD_TESTING=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
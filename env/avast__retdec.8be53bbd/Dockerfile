FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y     build-essential     cmake     git     python3     python-is-python3     openssl     libssl-dev     zlib1g-dev     autoconf     automake     pkg-config     m4     libtool     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/avast/retdec.git /testbed
WORKDIR /testbed
RUN git checkout 8be53bbd3d2cd0f550c0e98d3b31d9ee1366f304

RUN mkdir build && cd build &&     cmake .. -DCMAKE_INSTALL_PREFIX=/testbed/install -DRETDEC_TESTS=ON -DRETDEC_ENABLE_ALL=ON &&     make -j$(nproc)

ENV PATH="/testbed/install/bin:${PATH}"
CMD ["/bin/bash"]
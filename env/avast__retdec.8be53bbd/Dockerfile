# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive
RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     python3     python-is-python3     openssl     libssl-dev     zlib1g-dev     autoconf     automake     pkg-config     m4     libtool     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/avast__retdec.8be53bbd /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake .. -DCMAKE_INSTALL_PREFIX=/testbed/install -DRETDEC_TESTS=ON -DRETDEC_ENABLE_ALL=ON &&     make -j$(nproc)

ENV PATH="/testbed/install/bin:${PATH}"
CMD ["/bin/bash"]
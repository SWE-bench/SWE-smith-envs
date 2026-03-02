# syntax=docker/dockerfile:1
FROM ubuntu:24.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     diffutils     doxygen     g++     gcc     git     libboost-all-dev     libc-ares-dev     libcrypto++-dev     libfmt-dev     libgnutls28-dev     libhwloc-dev     liblz4-dev     libnuma-dev     libpciaccess-dev     libprotobuf-dev     libsctp-dev     libtool     liburing-dev     libxml2-dev     libyaml-cpp-dev     make     meson     ninja-build     openssl     pkg-config     protobuf-compiler     python3     python3-pyelftools     python3-yaml     ragel     stow     systemtap-sdt-dev     valgrind     xfslibs-dev     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/scylladb__seastar.7e457cf7 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false ./configure.py --mode=release --compiler=g++ &&     ninja -C build/release

CMD ["/bin/bash"]
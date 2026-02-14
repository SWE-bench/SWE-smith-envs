FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     diffutils     doxygen     g++     gcc     git     libboost-all-dev     libc-ares-dev     libcrypto++-dev     libfmt-dev     libgnutls28-dev     libhwloc-dev     liblz4-dev     libnuma-dev     libpciaccess-dev     libprotobuf-dev     libsctp-dev     libtool     liburing-dev     libxml2-dev     libyaml-cpp-dev     make     meson     ninja-build     openssl     pkg-config     protobuf-compiler     python3     python3-pyelftools     python3-yaml     ragel     stow     systemtap-sdt-dev     valgrind     xfslibs-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/scylladb/seastar.git /testbed
WORKDIR /testbed
RUN git checkout 7e457cf72dad2987c8fbf8f2382ea712e8bf1c34

RUN ./configure.py --mode=release --compiler=g++ &&     ninja -C build/release

CMD ["/bin/bash"]
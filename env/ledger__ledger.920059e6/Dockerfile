FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     texinfo     python3-dev     python3-pip     zlib1g-dev     libbz2-dev     libgmp3-dev     gettext     libmpfr-dev     libboost-date-time-dev     libboost-filesystem-dev     libboost-graph-dev     libboost-iostreams-dev     libboost-python-dev     libboost-regex-dev     libboost-test-dev     libboost-system-dev     libboost-serialization-dev     doxygen     libedit-dev     libmpc-dev     tzdata     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/ledger/ledger.git /testbed
WORKDIR /testbed
RUN git checkout 920059e6a4a9fbb7ccb9e2cbd6e8a8a06648c113

RUN mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON -DBUILD_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     libboost-system-dev     libboost-test-dev     libboost-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/lballabio/QuantLib.git /testbed
WORKDIR /testbed
RUN git checkout a05b6ab328ca7c01063d8209fcfb9e54a0eecf0b

RUN mkdir build && cd build &&     cmake -DQL_BUILD_TEST_SUITE=ON -DQL_BUILD_EXAMPLES=OFF -DCMAKE_BUILD_TYPE=Release .. &&     make -j$(nproc)

CMD ["/bin/bash"]
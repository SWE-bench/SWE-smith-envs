FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/ggerganov/ggwave.git /testbed
WORKDIR /testbed
RUN git fetch --all --tags
RUN git checkout 3b877d07b102d8242a3fa9f333bddde464848f1b

RUN mkdir build && cd build && cmake -DGGWAVE_BUILD_TESTS=ON -DGGWAVE_BUILD_EXAMPLES=OFF .. && make

CMD ["/bin/bash"]
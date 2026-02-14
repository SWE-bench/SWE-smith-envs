FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/taskflow/taskflow.git /testbed
WORKDIR /testbed
RUN git checkout d8776bc0d3317efbf2c2376006d74a04a6eabf2a

RUN mkdir build && cd build &&     cmake -DTF_BUILD_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
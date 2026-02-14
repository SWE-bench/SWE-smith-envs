FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/jbeder/yaml-cpp.git /testbed
WORKDIR /testbed
RUN git checkout 2e6383d272f676e1ad28ae5c47016045cbaff938

RUN mkdir build && cd build &&     cmake -DYAML_CPP_BUILD_TESTS=ON -DYAML_CPP_BUILD_TOOLS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
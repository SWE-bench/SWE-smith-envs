FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/doctest/doctest.git /testbed
WORKDIR /testbed
RUN git checkout 1da23a3e8119ec5cce4f9388e91b065e20bf06f5

RUN mkdir build && cd build &&     cmake -DDOCTEST_WITH_TESTS=ON -DDOCTEST_WITH_EXAMPLES=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
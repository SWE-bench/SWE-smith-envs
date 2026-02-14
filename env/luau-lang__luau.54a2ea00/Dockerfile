FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/luau-lang/luau.git /testbed
WORKDIR /testbed
RUN git checkout 54a2ea00831df4c791e6cfc896a98da75d1ae126

RUN mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DLUAU_BUILD_TESTS=ON .. &&     make -j$(nproc 2>/dev/null || echo 2) Luau.UnitTest Luau.CLI.Test

CMD ["/bin/bash"]
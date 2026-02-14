FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     git     build-essential     cmake     python3     python3-pip     libhwloc-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/uxlfoundation/oneTBB.git /testbed
WORKDIR /testbed
RUN git checkout 3ebfedd8638e3bf39db754d458099684488ad8f4

RUN mkdir build && cd build &&     cmake -DTBB_TEST=ON -DCMAKE_BUILD_TYPE=Release .. &&     cmake --build . -j$(nproc)

CMD ["/bin/bash"]
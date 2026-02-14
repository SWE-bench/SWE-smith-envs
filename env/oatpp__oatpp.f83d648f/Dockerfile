FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/oatpp/oatpp.git /testbed
WORKDIR /testbed
RUN git checkout f83d648fd82dc222ef88aabbafb68efbd7d7bf50

RUN mkdir build && cd build && cmake -DOATPP_BUILD_TESTS=ON .. && make -j$(nproc)
CMD ["/bin/bash"]
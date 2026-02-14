FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     git     build-essential     cmake     python3     flex     bison     libxml2-utils     graphviz     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/doxygen/doxygen.git /testbed
WORKDIR /testbed
RUN git checkout cbd8c4bcf0ebb58651fefbfbf9142a92e0a26a2f

RUN mkdir build && cd build && cmake -DBUILD_TESTING=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
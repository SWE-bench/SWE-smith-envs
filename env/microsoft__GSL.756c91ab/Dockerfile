FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     pkg-config     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/microsoft/GSL.git /testbed
WORKDIR /testbed
RUN git checkout 756c91ab895aa52f650599bb1a3fc131f1f4b5ef

RUN mkdir build && cd build &&     cmake -DGSL_TEST=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
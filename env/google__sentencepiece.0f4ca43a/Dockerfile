FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libgoogle-perftools-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/google/sentencepiece.git /testbed
WORKDIR /testbed
RUN git checkout 0f4ca43a084fac098420afc110d81e2c23cf1dc3

RUN mkdir build && cd build &&     cmake -DSPM_BUILD_TEST=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
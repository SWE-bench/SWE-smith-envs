FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     libglu1-mesa-dev     freeglut3-dev     mesa-common-dev     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/recastnavigation/recastnavigation.git /testbed
WORKDIR /testbed
RUN git checkout 13f433443867c4fb283bf230089b7250d09e331e

RUN mkdir build && cd build &&     cmake -DRECASTNAVIGATION_DEMO=OFF -DRECASTNAVIGATION_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
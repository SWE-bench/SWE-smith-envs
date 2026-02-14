FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     libssl-dev     zlib1g-dev     python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/cuberite/cuberite.git /testbed
WORKDIR /testbed
RUN git checkout 7fd3fa5c9345a3f1b949c0988c4849db00a68486

RUN mkdir build && cd build &&     cmake -DSELF_TEST=ON -DNO_NATIVE_OPTIMIZATION=ON -DCMAKE_BUILD_TYPE=Release .. &&     make -j$(nproc)

CMD ["/bin/bash"]
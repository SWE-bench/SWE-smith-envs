FROM ubuntu:22.04

RUN apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/leejet/stable-diffusion.cpp.git /testbed
WORKDIR /testbed
RUN git checkout f0f641a142705798d5064ffd3808165d75723344

# Add enable_testing() to the root CMakeLists.txt to allow ctest to find submodule tests
RUN sed -i '1ienable_testing()' CMakeLists.txt

RUN mkdir build && cd build && cmake -DGGML_BUILD_TESTS=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
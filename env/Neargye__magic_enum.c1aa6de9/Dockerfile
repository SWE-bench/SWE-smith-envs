FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/Neargye/magic_enum.git /testbed
WORKDIR /testbed
RUN git checkout c1aa6de965960250f4ab762e97e67e6290395dc7

RUN mkdir build && cd build &&     cmake -DMAGIC_ENUM_OPT_BUILD_TESTS=ON -DMAGIC_ENUM_OPT_BUILD_EXAMPLES=OFF .. &&     make -j$(nproc)

CMD ["/bin/bash"]
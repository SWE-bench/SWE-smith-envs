FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/ArthurSonzogni/FTXUI.git /testbed
WORKDIR /testbed
RUN git checkout f73d92d31f5efeccadfb7081edadbc070ef42f73

RUN mkdir build && cd build &&     cmake -DFTXUI_BUILD_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
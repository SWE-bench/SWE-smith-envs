FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/google/draco.git /testbed
WORKDIR /testbed
RUN git checkout b91aa9181a753e70d005fdb0cdcde06acddf68fa

RUN mkdir build && cd build &&     cmake -DDRACO_TESTS=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
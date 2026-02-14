FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     python3     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/ninja-build/ninja.git /testbed
WORKDIR /testbed
RUN git checkout cc60300ab94dae9bb28fece3c9b7c397235b17de

RUN mkdir build && cd build && cmake -DBUILD_TESTING=ON .. && make -j$(nproc)

CMD ["./build/ninja_test"]
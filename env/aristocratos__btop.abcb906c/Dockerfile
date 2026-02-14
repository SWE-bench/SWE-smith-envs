FROM gcc:14

RUN apt-get update && apt-get install -y     cmake     git     pkg-config     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/aristocratos/btop.git /testbed
WORKDIR /testbed
RUN git checkout abcb906c951d1e79ccc1c03d219f55d2e5c52655

RUN mkdir build && cd build && cmake -DBUILD_TESTING=ON .. && make -j$(nproc)

CMD ["./build/btop"]
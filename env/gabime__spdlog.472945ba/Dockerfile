FROM gcc:11

RUN apt-get update && apt-get install -y cmake git && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/gabime/spdlog.git /testbed
WORKDIR /testbed
RUN git checkout 472945ba489e3f5684761affc431ae532ab5ed8c

RUN mkdir build && cd build && cmake -DSPDLOG_BUILD_TESTS=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
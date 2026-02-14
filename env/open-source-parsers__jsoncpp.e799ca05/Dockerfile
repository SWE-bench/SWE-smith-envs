FROM gcc:11

RUN apt-get update && apt-get install -y cmake python3 git && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/open-source-parsers/jsoncpp.git /testbed
WORKDIR /testbed
RUN git checkout e799ca052df0f859d8d4133211344581c211b925

RUN mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DJSONCPP_WITH_TESTS=ON -DJSONCPP_WITH_POST_BUILD_UNITTEST=OFF .. &&     make -j$(nproc)

CMD ["/bin/bash"]
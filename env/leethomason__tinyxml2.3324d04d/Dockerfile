FROM gcc:11

RUN apt-get update && apt-get install -y cmake git && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/leethomason/tinyxml2.git /testbed
WORKDIR /testbed
RUN git checkout 3324d04d58de9d5db09327db6442f075e519f11b

RUN mkdir build && cd build &&     cmake -Dtinyxml2_BUILD_TESTING=ON -DBUILD_TESTING=ON .. &&     make -j$(nproc)

CMD ["./build/xmltest"]
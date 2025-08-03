FROM gcc:12
RUN apt-get update && apt-get install -y     libbrotli-dev libcurl4-openssl-dev     clang build-essential cmake     python3 python3-dev python3-pip

RUN git clone https://github.com/swesmith/catchorg__Catch2.9b3f508a /testbed
WORKDIR /testbed
RUN mkdir build && cd build     && cmake .. -DCATCH_DEVELOPMENT_BUILD=ON     && make all     && ctest
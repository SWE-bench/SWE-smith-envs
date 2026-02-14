FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update && apt-get install -y     git     cmake     make     pkg-config     gcc     g++     openssl     libssl-dev     libjsoncpp-dev     uuid-dev     zlib1g-dev     libc-ares-dev     postgresql-server-dev-all     libmariadb-dev     libsqlite3-dev     libhiredis-dev     libbrotli-dev     libyaml-cpp-dev     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/drogonframework/drogon.git /testbed
WORKDIR /testbed
RUN git checkout 3495522200664bfef150257157c30aa076188a79

RUN mkdir build && cd build &&     cmake -DBUILD_TESTING=ON -DCMAKE_BUILD_TYPE=Release .. &&     make -j$(nproc)

CMD ["/bin/bash"]
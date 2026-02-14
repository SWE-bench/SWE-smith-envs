FROM gcc:11

RUN apt-get update && apt-get install -y     git     cmake     ninja-build     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/google/highway.git /testbed
WORKDIR /testbed
RUN git checkout 224b014b1e6ebd1b9c1e134ebb5fbce899844c79

# Use -k 0 to continue building even if some targets fail, 
# and -j to speed up. Highway has many targets; we build just enough to verify.
RUN mkdir build && cd build &&     cmake -G Ninja -DBUILD_TESTING=ON -DHWY_WARNINGS_ARE_ERRORS=OFF -DCMAKE_BUILD_TYPE=Release .. &&     cmake --build . --parallel $(nproc)

CMD ["/bin/bash"]
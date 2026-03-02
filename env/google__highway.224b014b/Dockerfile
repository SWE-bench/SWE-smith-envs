# syntax=docker/dockerfile:1
FROM gcc:11
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     cmake     ninja-build     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/google__highway.224b014b /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Use -k 0 to continue building even if some targets fail, 
# and -j to speed up. Highway has many targets; we build just enough to verify.
RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -G Ninja -DBUILD_TESTING=ON -DHWY_WARNINGS_ARE_ERRORS=OFF -DCMAKE_BUILD_TYPE=Release .. &&     cmake --build . --parallel $(nproc)

CMD ["/bin/bash"]
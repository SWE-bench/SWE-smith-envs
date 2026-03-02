# syntax=docker/dockerfile:1
FROM gcc:11
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     cmake     git     libcurl4-openssl-dev     libssl-dev     zlib1g-dev     meson     ninja-build     pkg-config     python3-pip     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/libcpr__cpr.22a41e60 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DCPR_BUILD_TESTS=ON -DCPR_BUILD_TESTS_SSL=ON -DCPR_BUILD_TESTS_PROXY=OFF -DCPR_CURL_USE_LIBPSL=OFF .. &&     make -j$(nproc)

CMD ["/bin/bash"]
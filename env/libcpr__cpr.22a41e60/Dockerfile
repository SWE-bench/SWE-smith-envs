FROM gcc:11

RUN apt-get update && apt-get install -y     cmake     git     libcurl4-openssl-dev     libssl-dev     zlib1g-dev     meson     ninja-build     pkg-config     python3-pip     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/libcpr/cpr.git /testbed
WORKDIR /testbed
RUN git checkout 22a41e60836f2207bf54131e6ef7752009ec31e1

RUN mkdir build && cd build &&     cmake -DCPR_BUILD_TESTS=ON -DCPR_BUILD_TESTS_SSL=ON -DCPR_BUILD_TESTS_PROXY=OFF -DCPR_CURL_USE_LIBPSL=OFF .. &&     make -j$(nproc)

CMD ["/bin/bash"]
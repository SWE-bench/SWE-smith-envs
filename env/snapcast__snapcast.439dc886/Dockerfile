FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     libasound2-dev     libpulse-dev     libvorbisidec-dev     libvorbis-dev     libopus-dev     libflac-dev     libsoxr-dev     libavahi-client-dev     libicu-dev     libboost-all-dev     libssl-dev     libexpat1-dev     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/snapcast/snapcast.git /testbed
WORKDIR /testbed
RUN git fetch --all --tags
RUN git checkout 439dc88637bb7ac227c24d8ad383e7cdf46a76d7

RUN mkdir build && cd build &&     cmake -DBUILD_TESTS=ON -DBUILD_WITH_PULSE=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
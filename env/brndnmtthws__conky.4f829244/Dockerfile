FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     liblua5.3-dev     libncurses5-dev     libx11-dev     libxft-dev     libxdamage-dev     libxinerama-dev     libxext-dev     libxml2-dev     libimlib2-dev     libmicrohttpd-dev     libcurl4-openssl-dev     libpulse-dev     libsystemd-dev     libircclient-dev     libical-dev     libiw-dev     python3     python3-pip     python3-yaml     python3-jinja2     gperf     gettext     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/brndnmtthws/conky.git /testbed
WORKDIR /testbed
RUN git fetch --all --tags
RUN git checkout 4f8292449ae8c1a0a6138f2bfe2ebc5368221633

RUN mkdir build && cd build &&     cmake -DBUILD_TESTING=ON           -DBUILD_X11=ON           -DBUILD_NCURSES=ON           -DBUILD_LUA_CAIRO=OFF           -DMAINTAINER_MODE=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
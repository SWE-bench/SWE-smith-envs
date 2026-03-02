# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     pkg-config     liblua5.3-dev     libncurses5-dev     libx11-dev     libxft-dev     libxdamage-dev     libxinerama-dev     libxext-dev     libxml2-dev     libimlib2-dev     libmicrohttpd-dev     libcurl4-openssl-dev     libpulse-dev     libsystemd-dev     libircclient-dev     libical-dev     libiw-dev     python3     python3-pip     python3-yaml     python3-jinja2     gperf     gettext     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/brndnmtthws__conky.4f829244 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git fetch --all --tags
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DBUILD_TESTING=ON           -DBUILD_X11=ON           -DBUILD_NCURSES=ON           -DBUILD_LUA_CAIRO=OFF           -DMAINTAINER_MODE=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
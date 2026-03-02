# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     build-essential     cmake     git     libqcustomplot-dev     libqt5scintilla2-dev     libsqlcipher-dev     libsqlite3-dev     qt5-qmake     qtbase5-dev     qtbase5-dev-tools     qtchooser     qttools5-dev     qttools5-dev-tools     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/sqlitebrowser__sqlitebrowser.95f92180 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false mkdir build && cd build &&     cmake -DENABLE_TESTING=ON -DFORCE_INTERNAL_QSCINTILLA=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
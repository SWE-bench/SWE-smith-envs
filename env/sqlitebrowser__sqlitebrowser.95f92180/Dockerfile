FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     build-essential     cmake     git     libqcustomplot-dev     libqt5scintilla2-dev     libsqlcipher-dev     libsqlite3-dev     qt5-qmake     qtbase5-dev     qtbase5-dev-tools     qtchooser     qttools5-dev     qttools5-dev-tools     && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/sqlitebrowser/sqlitebrowser.git /testbed
WORKDIR /testbed
RUN git checkout 95f92180cd88f7e51f3678fc5133191393edc19d

RUN mkdir build && cd build &&     cmake -DENABLE_TESTING=ON -DFORCE_INTERNAL_QSCINTILLA=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
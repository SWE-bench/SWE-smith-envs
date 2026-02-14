FROM ubuntu:24.04

RUN apt-get update && apt-get install -y     cmake     git     build-essential     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/skypjack/entt.git /testbed
WORKDIR /testbed
RUN git checkout e08302e169690a40500fe6547209fa82f17f913e

RUN mkdir build_dir && cd build_dir &&     cmake -DENTT_BUILD_TESTING=ON .. &&     make -j$(nproc)

CMD ["/bin/bash"]
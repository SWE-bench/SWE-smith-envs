FROM gcc:11

RUN apt-get update && apt-get install -y git cmake && rm -rf /var/lib/apt/lists/*

RUN git clone --recurse-submodules https://github.com/bblanchon/ArduinoJson.git /testbed
WORKDIR /testbed
RUN git checkout aa7fbd6c8be280121cf57044ef986da7353ffd67

RUN mkdir build && cd build && cmake -DBUILD_TESTING=ON .. && make -j$(nproc)

CMD ["/bin/bash"]
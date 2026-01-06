FROM emscripten/emsdk:latest

RUN apt-get update && apt-get install -y git make python3 unzip curl libdigest-sha3-perl && rm -rf /var/lib/apt/lists/*


RUN git clone --depth 1 --recurse-submodules --shallow-submodules https://github.com/sql/js-sql.js.git /testbed
WORKDIR /testbed

RUN npm install
RUN npm run build

CMD ["/bin/bash"]
FROM emscripten/emsdk:latest

RUN apt-get update && apt-get install -y git make python3 unzip curl libdigest-sha3-perl && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/sql-js__sql.js.52e5649f /testbed
WORKDIR /testbed

RUN npm install
RUN npm run build

CMD ["/bin/bash"]
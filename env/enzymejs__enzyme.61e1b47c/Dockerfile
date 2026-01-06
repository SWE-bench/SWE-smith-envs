FROM node:18-slim

RUN apt-get update && apt-get install -y     git     python3     make     g++     && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/enzymejs__enzyme.61e1b47c /testbed
WORKDIR /testbed

ENV NODE_OPTIONS="--max-old-space-size=4096"
RUN npm install

CMD ["/bin/bash"]
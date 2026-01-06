FROM node:20-slim

RUN apt-get update && apt-get install -y     git     make     procps     && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/riot__riot.32aecfaa /testbed
WORKDIR /testbed

RUN npm install

CMD ["/bin/bash"]
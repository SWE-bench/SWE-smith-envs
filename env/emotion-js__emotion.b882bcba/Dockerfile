FROM node:18-slim

RUN apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

RUN corepack enable


RUN git clone --depth 1 https://github.com/swesmith/emotion-js__emotion.b882bcba /testbed
WORKDIR /testbed

RUN yarn install

CMD ["/bin/bash"]
FROM node:18-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/serverless__serverless.de62c71e /testbed
WORKDIR /testbed

RUN npm install
CMD ["/bin/bash"]
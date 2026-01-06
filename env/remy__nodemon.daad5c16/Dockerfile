FROM node:18-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/remy__nodemon.daad5c16 /testbed
WORKDIR /testbed
RUN npm install
CMD ["/bin/bash"]
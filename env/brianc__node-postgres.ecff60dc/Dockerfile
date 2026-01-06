FROM node:20-slim

RUN apt-get update && apt-get install -y     git     make     python3     g++     build-essential     libpq-dev     postgresql     postgresql-contrib     sudo     && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/brianc__node-postgres.ecff60dc /testbed
WORKDIR /testbed
RUN yarn install
RUN yarn build

CMD ["/bin/bash"]
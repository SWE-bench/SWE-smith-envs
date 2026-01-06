FROM node:18-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/segmentio__evergreen.9b774aee /testbed
WORKDIR /testbed

RUN yarn install --frozen-lockfile

CMD ["/bin/bash"]
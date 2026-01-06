FROM node:20-slim

RUN apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN npm install -g pnpm@10.12.2


RUN git clone https://github.com/swesmith/handsontable__handsontable.e71f0f42 /testbed
WORKDIR /testbed

RUN pnpm install && pnpm run build

CMD ["/bin/bash"]
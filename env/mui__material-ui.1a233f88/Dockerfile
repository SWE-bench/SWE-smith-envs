FROM node:22-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN npm install -g pnpm@10.25.0


RUN git clone https://github.com/swesmith/mui__material-ui.1a233f88 /testbed
WORKDIR /testbed

RUN pnpm install

CMD ["/bin/bash"]
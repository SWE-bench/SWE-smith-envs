FROM node:18-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/jantimon__html-webpack-plugin.9a39db80 /testbed
WORKDIR /testbed

RUN npm install --legacy-peer-deps

CMD ["/bin/bash"]
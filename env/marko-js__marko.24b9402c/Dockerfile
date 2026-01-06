FROM node:20-slim

RUN apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/marko-js__marko.24b9402c /testbed
WORKDIR /testbed

RUN npm install && npm run build

CMD ["/bin/bash"]
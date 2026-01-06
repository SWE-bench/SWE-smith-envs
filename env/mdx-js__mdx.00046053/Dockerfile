FROM node:20-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/mdx-js__mdx.00046053 /testbed
WORKDIR /testbed

RUN npm install

RUN npm run build

CMD ["/bin/bash"]
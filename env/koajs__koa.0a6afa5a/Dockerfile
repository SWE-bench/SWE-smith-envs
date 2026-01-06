FROM node:18-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/koajs__koa.0a6afa5a /testbed
WORKDIR /testbed

RUN npm install

CMD ["/bin/bash"]
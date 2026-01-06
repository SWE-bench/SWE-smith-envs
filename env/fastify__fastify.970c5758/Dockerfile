FROM node:20-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/fastify__fastify.970c5758 /testbed
WORKDIR /testbed

RUN npm install

CMD ["/bin/bash"]
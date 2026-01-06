FROM node:18-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/forwardemail__supertest.14d905dc /testbed
WORKDIR /testbed
RUN npm install
CMD ["npm", "test"]
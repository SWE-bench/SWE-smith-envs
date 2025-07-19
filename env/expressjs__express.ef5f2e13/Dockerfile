FROM node:18-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/expressjs__express.ef5f2e13 /testbed
WORKDIR /testbed
RUN npm install

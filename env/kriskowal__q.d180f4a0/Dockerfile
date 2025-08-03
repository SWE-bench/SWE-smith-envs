FROM node:22-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/kriskowal__q.d180f4a0 /testbed
WORKDIR /testbed
RUN npm install

FROM node:18-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/axios__axios.ef36347f /testbed
WORKDIR /testbed
RUN npm install

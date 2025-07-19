FROM node:18-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/caolan__async.23dbf76a /testbed
WORKDIR /testbed
RUN npm install

FROM node:22-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/mrdoob__three.js.73b3f248 /testbed
WORKDIR /testbed
RUN npm install

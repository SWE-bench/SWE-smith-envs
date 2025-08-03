FROM node:22-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/immutable-js__immutable-js.879adab5 /testbed
WORKDIR /testbed
RUN npm install

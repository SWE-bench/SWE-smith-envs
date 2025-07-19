FROM node:20-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/tj__commander.js.395cf714 /testbed
WORKDIR /testbed
RUN npm install

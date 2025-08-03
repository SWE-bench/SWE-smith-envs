FROM node:22-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/apache__echarts.6be0e145 /testbed
WORKDIR /testbed
RUN npm install

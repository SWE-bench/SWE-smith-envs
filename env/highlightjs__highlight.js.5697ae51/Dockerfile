FROM node:22-bullseye
RUN apt update && apt install -y git
RUN git clone https://github.com/swesmith/highlightjs__highlight.js.5697ae51 /testbed
WORKDIR /testbed
RUN npm install
RUN npm run build

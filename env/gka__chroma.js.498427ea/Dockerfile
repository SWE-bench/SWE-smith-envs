FROM node:22-bullseye
RUN apt update && apt install -y git
RUN git clone https://github.com/swesmith/gka__chroma.js.498427ea /testbed
WORKDIR /testbed
RUN npm install
RUN npm run build

FROM node:22-bullseye
RUN apt update && apt install -y git
RUN git clone https://github.com/swesmith/PrismJS__prism.31b467fa /testbed
WORKDIR /testbed
RUN npm ci
RUN npm run build

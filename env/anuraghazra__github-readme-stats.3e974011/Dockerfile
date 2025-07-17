FROM node:18-bullseye
RUN apt update && apt install -y git
RUN git clone https://github.com/swesmith/anuraghazra__github-readme-stats.3e974011 /testbed
WORKDIR /testbed
RUN npm install

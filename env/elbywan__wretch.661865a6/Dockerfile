FROM node:22-bullseye
RUN apt update && apt install -y git
RUN git clone https://github.com/swesmith/elbywan__wretch.661865a6 /testbed
WORKDIR /testbed
RUN npm install
RUN npm run build

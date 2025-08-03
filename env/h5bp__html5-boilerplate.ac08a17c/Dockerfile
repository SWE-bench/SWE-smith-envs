FROM node:22-bullseye
RUN apt update && apt install -y git
RUN git clone https://github.com/swesmith/h5bp__html5-boilerplate.ac08a17c /testbed
WORKDIR /testbed
RUN npm ci

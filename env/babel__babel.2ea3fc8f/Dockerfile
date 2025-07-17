FROM node:20-bullseye
RUN apt update && apt install -y git
RUN git clone https://github.com/swesmith/babel__babel.2ea3fc8f /testbed
WORKDIR /testbed
RUN make bootstrap
RUN make build

FROM node:20-slim

RUN apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/webpack__webpack.24e3c2d2 /testbed
WORKDIR /testbed

RUN yarn install && yarn setup

CMD ["/bin/bash"]
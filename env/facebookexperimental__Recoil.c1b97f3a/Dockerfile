FROM node:18

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/facebookexperimental__Recoil.c1b97f3a /testbed
WORKDIR /testbed

RUN yarn install

CMD ["/bin/bash"]
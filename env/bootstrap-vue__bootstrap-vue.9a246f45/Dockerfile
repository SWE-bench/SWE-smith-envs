FROM node:18-bullseye-slim

RUN apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/bootstrap-vue__bootstrap-vue.9a246f45 /testbed
WORKDIR /testbed
RUN chmod u+x scripts/build.sh
RUN yarn install --frozen-lockfile

CMD ["/bin/bash"]
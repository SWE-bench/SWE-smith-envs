FROM node:22-slim

RUN apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/usebruno__bruno.80e09d1a /testbed
WORKDIR /testbed

RUN npm run setup

CMD ["/bin/bash"]
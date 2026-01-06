FROM node:20-slim

RUN apt-get update && apt-get install -y git procps bc python3 && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/Unitech__pm2.ff1ca974 /testbed
WORKDIR /testbed
RUN npm install

CMD ["/bin/bash"]
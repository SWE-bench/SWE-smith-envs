FROM node:18-slim

RUN apt-get update && apt-get install -y git build-essential python3 && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/forwardemail__superagent.cec26064 /testbed
WORKDIR /testbed

RUN npm install

RUN npm run build

CMD ["/bin/bash"]
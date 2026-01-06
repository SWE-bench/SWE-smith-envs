FROM node:18-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/davila7__claude-code-templates.734b8a50 /testbed
WORKDIR /testbed

RUN npm install &&     cd cli-tool && npm install &&     cd ../api && npm install

CMD ["/bin/bash"]
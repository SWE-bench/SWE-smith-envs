FROM node:20-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/11ty__eleventy.e9a16667 /testbed
WORKDIR /testbed

RUN npm install

CMD ["npm", "test"]
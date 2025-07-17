FROM node:24-bullseye
RUN apt update && apt install -y git libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxi6 libxtst6 libnss3 libcups2 libxss1 libxrandr2 libasound2 libatk1.0-0 libgtk-3-0 x11-utils
RUN git clone https://github.com/swesmith/markedjs__marked.dbf29d91 /testbed
WORKDIR /testbed
RUN npm install
RUN npm test

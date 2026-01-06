FROM node:18-slim

RUN apt-get update && apt-get install -y git chromium && rm -rf /var/lib/apt/lists/*

ENV CHROME_BIN=/usr/bin/chromium


RUN git clone https://github.com/swesmith/jashkenas__backbone.e8bc45ac /testbed
WORKDIR /testbed

RUN npm install && npm install karma-chrome-launcher --save-dev

# Add ChromeHeadlessNoSandbox launcher to karma.conf.js
RUN sed -i "s/customLaunchers: {/customLaunchers: {\n        ChromeHeadlessNoSandbox: {\n            base: 'ChromeHeadless',\n            flags: ['--no-sandbox']\n        },/" karma.conf.js

# Build debug-info.js which is required by tests
RUN npm run build-debug

CMD ["/bin/bash"]
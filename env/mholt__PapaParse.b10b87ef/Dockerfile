FROM node:18-slim

RUN apt-get update && apt-get install -y     git     chromium     && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/mholt__PapaParse.b10b87ef /testbed
WORKDIR /testbed
RUN npm install
RUN sed -i "s/'-f'/'-a', '["--no-sandbox"]', '-f'/" tests/test.js

CMD ["/bin/bash"]
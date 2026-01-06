FROM node:18-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/nightwatchjs__nightwatch.54c8550c /testbed
WORKDIR /testbed

RUN npm install --ignore-scripts

CMD ["/bin/bash"]
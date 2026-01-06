FROM node:20-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/hapijs__joi.481e270e /testbed
WORKDIR /testbed

RUN npm install

CMD ["/bin/bash"]
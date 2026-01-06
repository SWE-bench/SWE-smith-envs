FROM node:18-bullseye-slim

RUN apt-get update && apt-get install -y     git     python3     make     g++     ffmpeg     && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/advplyr__audiobookshelf.626596b1 /testbed
WORKDIR /testbed

# Install root dependencies
RUN npm ci

# Install client dependencies and build client
RUN cd client && npm ci && npm run generate

# Ensure we are back in root
WORKDIR /testbed

CMD ["npm", "start"]
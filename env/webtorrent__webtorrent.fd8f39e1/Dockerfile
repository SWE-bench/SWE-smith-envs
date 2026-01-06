FROM node:20-slim

# Install system dependencies for native modules
RUN apt-get update && apt-get install -y     python3     make     g++     git     && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/webtorrent__webtorrent.fd8f39e1 /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

CMD ["/bin/bash"]
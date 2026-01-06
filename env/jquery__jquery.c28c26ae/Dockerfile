FROM node:20-slim

# Install system dependencies
RUN apt-get update && apt-get install -y     git     python3     make     g++     && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/jquery__jquery.c28c26ae /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

# Default command
CMD ["/bin/bash"]
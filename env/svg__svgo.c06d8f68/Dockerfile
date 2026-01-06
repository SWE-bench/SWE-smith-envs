FROM node:20-slim

# Install git for cloning the repository
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/svg__svgo.c06d8f68 /testbed
WORKDIR /testbed

# Enable corepack to use the yarn version specified in package.json and install dependencies
RUN corepack enable && yarn install

CMD ["/bin/bash"]
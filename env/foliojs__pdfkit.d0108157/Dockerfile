FROM node:18-slim

# Install system dependencies
RUN apt-get update && apt-get install -y     git     build-essential     libcairo2-dev     libpango1.0-dev     libjpeg-dev     libgif-dev     librsvg2-dev     && rm -rf /var/lib/apt/lists/*

WORKDIR /testbed

# Enable corepack to use the yarn version specified in package.json
RUN corepack enable

# Clone the repository
RUN git clone https://github.com/swesmith/foliojs__pdfkit.d0108157 /testbed
WORKDIR /testbed

# Install dependencies
RUN yarn install

CMD ["/bin/bash"]
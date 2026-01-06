FROM node:20-slim

# Install system dependencies required for building some native modules and git for cloning
RUN apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/GoogleChrome__workbox.1893b3f6 /testbed
WORKDIR /testbed

# Install dependencies and build the project (required for tests to find built modules)
RUN npm ci && npm run build

CMD ["/bin/bash"]
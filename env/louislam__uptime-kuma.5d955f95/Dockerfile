FROM node:20-slim

# Install system dependencies
RUN apt-get update && apt-get install -y     git     python3     build-essential     iputils-ping     && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/louislam__uptime-kuma.5d955f95 /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

# Build the frontend
RUN npm run build

# Default command
CMD ["npm", "start"]
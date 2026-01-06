FROM node:20-slim

# Install system dependencies
RUN apt-get update && apt-get install -y     git     && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/welldone-software__why-did-you-render.3ec3512d /testbed
WORKDIR /testbed

# Install dependencies
RUN yarn install

# Keep the container running
CMD ["/bin/bash"]
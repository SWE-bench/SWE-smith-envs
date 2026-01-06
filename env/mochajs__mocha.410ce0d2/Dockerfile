FROM node:22-slim

# Install git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/mochajs__mocha.410ce0d2 /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

# Set the default command
CMD ["/bin/bash"]
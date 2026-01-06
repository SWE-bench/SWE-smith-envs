FROM node:18-slim

# Install system dependencies
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/akiran__react-slick.97442318 /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

# Set the default command
CMD ["/bin/bash"]
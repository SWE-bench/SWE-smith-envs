FROM node:18

# Install system dependencies
RUN apt-get update && apt-get install -y     git     && rm -rf /var/lib/apt/lists/*

# Set working directory

# Clone the repository
RUN git clone https://github.com/swesmith/necolas__react-native-web.a9de220b /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

# Set default command
CMD ["/bin/bash"]
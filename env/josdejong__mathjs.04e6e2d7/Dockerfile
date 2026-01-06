FROM node:18-slim

# Install git and other system dependencies if needed
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/josdejong__mathjs.04e6e2d7 /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

# Build the project (as it seems to have a build step that generates lib/ which might be needed for tests)
RUN npm run build

CMD ["/bin/bash"]
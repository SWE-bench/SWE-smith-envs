FROM node:18-slim

# Install system dependencies
RUN apt-get update && apt-get install -y     git     && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/bpampuch__pdfmake.719e7314 /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

CMD ["/bin/bash"]
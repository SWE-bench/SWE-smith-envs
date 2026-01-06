FROM node:20-slim

# Install git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/layui__layui.abdb748b /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

CMD ["/bin/bash"]
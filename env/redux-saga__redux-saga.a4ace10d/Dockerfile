FROM node:18-slim

# Install git for cloning and patching
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/redux-saga__redux-saga.a4ace10d /testbed
WORKDIR /testbed

# Install dependencies using yarn (yarn.lock is present)
RUN yarn install --frozen-lockfile

CMD ["/bin/bash"]
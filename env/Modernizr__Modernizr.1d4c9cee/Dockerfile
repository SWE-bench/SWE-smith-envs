FROM node:18-slim

# Install system dependencies including git and chromium for puppeteer/mocha-headless-chrome
RUN apt-get update && apt-get install -y     git     wget     gnupg     ca-certificates     chromium     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/Modernizr__Modernizr.1d4c9cee /testbed
WORKDIR /testbed

# Install dependencies, skipping puppeteer browser download since we use system chromium
ENV PUPPETEER_SKIP_DOWNLOAD=true
ENV CHROME_PATH=/usr/bin/chromium
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
RUN npm install

# Set CMD
CMD ["/bin/bash"]
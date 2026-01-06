FROM node:20-slim

# Install system dependencies
RUN apt-get update && apt-get install -y     git     chromium     ca-certificates     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*

# Create a wrapper for chromium to always include --no-sandbox
RUN mv /usr/bin/chromium /usr/bin/chromium-orig &&     echo -e '#!/bin/bash\n/usr/bin/chromium-orig --no-sandbox "$@"' > /usr/bin/chromium &&     chmod +x /usr/bin/chromium

# Set environment variables
ENV CHROME_BIN=/usr/bin/chromium
ENV TEST_BROWSER_NAME=ChromeHeadless


# Clone the repository
RUN git clone https://github.com/swesmith/novnc__noVNC.d44f7e04 /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

# Command to keep container running
CMD ["/bin/bash"]
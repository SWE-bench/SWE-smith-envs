FROM node:18-bullseye-slim

# Install system dependencies for Playwright and Puppeteer
RUN apt-get update && apt-get install -y     git     libnss3     libdbus-1-3     libatk1.0-0     libatk-bridge2.0-0     libcups2     libdrm2     libxcomposite1     libxdamage1     libxext6     libxfixes3     libxrandr2     libgbm1     libasound2     libpangocairo-1.0-0     libx11-6     libxkbcommon0     libpango-1.0-0     libcairo2     && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/piskelapp__piskel.51373322 /testbed
WORKDIR /testbed

# Install dependencies
RUN npm install

# Install Playwright browsers and their dependencies
RUN npx playwright install --with-deps chromium

CMD ["/bin/bash"]
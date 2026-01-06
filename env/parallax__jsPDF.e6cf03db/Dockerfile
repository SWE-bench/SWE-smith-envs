FROM node:18

RUN apt-get update && apt-get install -y \
    git \
    libnss3 \
    libatk-bridge2.0-0 \
    libx11-xcb1 \
    libxcb-dri3-0 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libxrender1 \
    libxtst6 \
    libcups2 \
    libdbus-1-3 \
    libexpat1 \
    libfontconfig1 \
    libgbm1 \
    libgcc1 \
    libglib2.0-0 \
    libgtk-3-0 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libstdc++6 \
    libv4l-0 \
    libxkbcommon0 \
    libasound2 \
    wget \
    gnupg \
    --no-install-recommends \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-stable --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ENV CHROME_BIN=/usr/bin/google-chrome-stable


RUN git clone https://github.com/swesmith/parallax__jsPDF.e6cf03db /testbed
WORKDIR /testbed

RUN npm install

# Inject custom launcher into karma.conf.js
RUN sed -i "s/browsers: \\['Chrome'\\]/browsers: ['ChromeHeadlessNoSandbox']/" test/unit/karma.conf.js && \
    sed -i "/reporters: \\[/i     customLaunchers: {\\n      ChromeHeadlessNoSandbox: {\\n        base: 'ChromeHeadless',\\n        flags: ['--no-sandbox', '--disable-setuid-sandbox']\\n      }\\n    }," test/unit/karma.conf.js

CMD ["/bin/bash"]
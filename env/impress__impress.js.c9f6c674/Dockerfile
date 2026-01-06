FROM node:18

RUN apt-get update && apt-get install -y     git     wget     gnupg     ca-certificates     libgconf-2-4     libatk1.0-0     libatk-bridge2.0-0     libgdk-pixbuf2.0-0     libgtk-3-0     libgbm-dev     libnss3     libxss1     libasound2     libxtst6     xfonts-75dpi     xfonts-base     fonts-liberation     libappindicator3-1     lsb-release     xdg-utils     libx11-xcb1     libxcb-dri3-0     --no-install-recommends     && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/impress__impress.js.c9f6c674 /testbed
WORKDIR /testbed

RUN npm install

RUN npm run build

CMD ["/bin/bash"]
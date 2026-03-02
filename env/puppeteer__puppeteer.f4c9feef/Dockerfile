# syntax=docker/dockerfile:1
FROM node:22-bookworm
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     wget     gnupg     ca-certificates     procps     libasound2     libatk1.0-0     libc6     libcairo2     libcups2     libdbus-1-3     libexpat1     libfontconfig1     libgbm1     libgcc1     libgconf-2-4     libgdk-pixbuf2.0-0     libglib2.0-0     libgtk-3-0     libnspr4     libpango-1.0-0     libpangocairo-1.0-0     libstdc++6     libx11-6     libx11-xcb1     libxcb1     libxcomposite1     libxcursor1     libxdamage1     libxext6     libxfixes3     libxi6     libxrandr2     libxrender1     libxss1     libxtst6     lsb-release     xdg-utils     --no-install-recommends     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/puppeteer__puppeteer.f4c9feef.git /testbed
WORKDIR /testbed
# RUN git checkout f4c9feef9972dc9f93a21e61e2876e4517316d13
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install
RUN --mount=type=ssh,required=false npm run build

CMD ["/bin/bash"]
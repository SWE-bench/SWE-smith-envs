# syntax=docker/dockerfile:1
FROM node:18
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     chromium     firefox-esr     && rm -rf /var/lib/apt/lists/*

ENV CHROME_BIN=/usr/bin/chromium
ENV FIREFOX_BIN=/usr/bin/firefox

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/hotwired__stimulus.422eb81f.git /testbed
WORKDIR /testbed
# RUN git checkout 422eb81fa6496d7e24c3983c63e74f3530367cd3
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --frozen-lockfile

CMD ["/bin/bash"]
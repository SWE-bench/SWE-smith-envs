# syntax=docker/dockerfile:1
FROM node:18
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     libgtk2.0-0     libgtk-3-0     libgbm-dev     libnotify-dev     libgconf-2-4     libnss3     libxss1     libasound2     libxtst6     xauth     xvfb     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/codex-team__editor.js.90d6dec9.git /testbed
WORKDIR /testbed
# RUN git checkout 90d6dec90ee38280965759019ea5bb18f3ad0125
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install

CMD ["/bin/bash"]
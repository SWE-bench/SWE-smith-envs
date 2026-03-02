# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     libnss3     libdbus-1-3     libatk1.0-0     libasound2     libxshmfence1     libgbm1     libgtk-3-0     libx11-xcb1     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/mapbox__mapbox-gl-js.9236fbb0.git /testbed
WORKDIR /testbed
# RUN git checkout 9236fbb0e017656d5a0ad881c9f55e4859064211
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install
RUN --mount=type=ssh,required=false npx playwright install --with-deps chromium

CMD ["/bin/bash"]
# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     libnss3     libnspr4     libatk1.0-0     libatk-bridge2.0-0     libcups2     libdrm2     libdbus-1-3     libxcb1     libxkbcommon0     libx11-6     libxcomposite1     libxdamage1     libxext6     libxfixes3     libxrandr2     libgbm1     libasound2     libpangocairo-1.0-0     libpango-1.0-0     libcairo2     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/sindresorhus__ky.eb5c3eba.git /testbed
WORKDIR /testbed
# RUN git checkout eb5c3eba37451b7a6d598efa23d33c97919ae9e6
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install

CMD ["/bin/bash"]
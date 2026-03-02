# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"
RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ajayyy__SponsorBlock.dfddffbc.git /testbed
WORKDIR /testbed
# RUN git checkout dfddffbc5128dbc55b4dc7c83cdcd18787f48ba4
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false npm install
RUN --mount=type=ssh,required=false cp config.json.example config.json && npm run build:chrome
CMD ["/bin/bash"]
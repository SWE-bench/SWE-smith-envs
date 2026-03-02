# syntax=docker/dockerfile:1
FROM node:18
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/JedWatson__react-select.052e864b.git /testbed
WORKDIR /testbed
# RUN git checkout 052e864b4990a67c4ee416851c34d1eb7b58267b
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install

CMD ["/bin/bash"]
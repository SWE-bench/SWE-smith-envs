# syntax=docker/dockerfile:1
FROM oven/bun:1.3.7
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/GitbookIO__gitbook.81f8ddcf.git /testbed
WORKDIR /testbed
# RUN git checkout 81f8ddcf27ec398a33b6f676a81e9a791b673ce2
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false bun install

CMD ["/bin/bash"]
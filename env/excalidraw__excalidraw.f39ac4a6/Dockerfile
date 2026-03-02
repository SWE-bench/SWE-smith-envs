# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 make g++ && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/excalidraw__excalidraw.f39ac4a6.git /testbed
WORKDIR /testbed
# RUN git checkout f39ac4a653335efaaaf9834bf28e9ffc1452cb59
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --network-timeout 600000

CMD ["/bin/bash"]
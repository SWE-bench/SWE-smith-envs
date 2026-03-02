# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/retejs__rete.2aae1995.git /testbed
WORKDIR /testbed
# RUN git checkout 2aae19950180dc12725306f06c0440f64473bd21
RUN --mount=type=ssh,required=false git submodule update --init --recursive
RUN --mount=type=ssh,required=false npm ci
CMD ["/bin/bash"]
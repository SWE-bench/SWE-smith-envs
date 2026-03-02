# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/ant-design__ant-design.ef322504.git /testbed
WORKDIR /testbed
# RUN git checkout ef32250465cdbb4521c084e4189499a7d45491e2
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install --legacy-peer-deps

CMD ["/bin/bash"]
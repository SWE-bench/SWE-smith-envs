# syntax=docker/dockerfile:1
FROM node:18-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/jaredpalmer__formik.91475adb.git /testbed
WORKDIR /testbed
# RUN git checkout 91475adbf33579561e580eceea0c031f4ec2e992
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --frozen-lockfile

CMD ["/bin/bash"]
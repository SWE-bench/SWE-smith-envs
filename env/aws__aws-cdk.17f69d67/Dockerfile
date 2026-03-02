# syntax=docker/dockerfile:1
FROM node:20-bookworm
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     python3     python3-pip     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false corepack enable

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/aws__aws-cdk.17f69d67.git /testbed
WORKDIR /testbed
# RUN git checkout 17f69d679724eff41fdbbe6ae29fd8111e7db398
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false yarn install --frozen-lockfile --non-interactive

RUN --mount=type=ssh,required=false npx lerna run build --scope @aws-cdk/cx-api --include-dependencies

CMD ["/bin/bash"]
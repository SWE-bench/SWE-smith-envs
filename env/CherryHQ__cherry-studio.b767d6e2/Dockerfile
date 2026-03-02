# syntax=docker/dockerfile:1
FROM node:22-alpine
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apk add --no-cache git python3 make g++ gcc musl-dev

# Clone ONLY the main repo to save space (avoiding --recurse-submodules)
RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/CherryHQ__cherry-studio.b767d6e2.git /testbed
WORKDIR /testbed
# RUN git checkout b767d6e2bff302740f2e6d8e49b8cec221147a4d

# Install pnpm and dependencies, skipping scripts and cleaning cache
RUN --mount=type=ssh,required=false npm install -g pnpm@10.27.0 &&     pnpm install --ignore-scripts &&     pnpm store prune

CMD ["/bin/bash"]
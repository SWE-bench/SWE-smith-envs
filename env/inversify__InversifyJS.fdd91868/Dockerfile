# syntax=docker/dockerfile:1
FROM node:22-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false corepack enable && corepack prepare pnpm@10.4.1 --activate

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/inversify__InversifyJS.fdd91868.git /testbed
WORKDIR /testbed
# RUN git checkout fdd9186891e777884012984c64c271e576155f08
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Remove the problematic packageManager field before install
RUN --mount=type=ssh,required=false node -e "const fs = require('fs'); const pkg = JSON.parse(fs.readFileSync('package.json', 'utf8')); delete pkg.devEngines; fs.writeFileSync('package.json', JSON.stringify(pkg, null, 2));"

RUN --mount=type=ssh,required=false pnpm install

CMD ["/bin/bash"]
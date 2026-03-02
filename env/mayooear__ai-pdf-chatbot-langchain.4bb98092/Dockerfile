# syntax=docker/dockerfile:1
FROM node:20-slim
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git jq && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/mayooear__ai-pdf-chatbot-langchain.4bb98092.git /testbed
WORKDIR /testbed
# RUN git checkout 4bb98092472d0af57db600a10ba2183d76adecc4
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Fix for Turborepo and root test script
RUN --mount=type=ssh,required=false jq '. + {"packageManager": "yarn@1.22.22", "scripts": (.scripts + {"test": "turbo run test"})}' package.json > package.json.tmp &&     mv package.json.tmp package.json

RUN --mount=type=ssh,required=false yarn install

CMD ["yarn", "build"]
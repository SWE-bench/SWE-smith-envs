# syntax=docker/dockerfile:1
FROM node:22
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false npx @teambit/bvm install
ENV PATH="/root/bin:$PATH"

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/teambit__bit.2d92cae7.git /testbed
WORKDIR /testbed
# RUN git checkout 2d92cae7b98b1bf024e6856161df37121d0bf6ea
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# Install dependencies using bit and ensure devDependencies (like registry-mock) are available
RUN --mount=type=ssh,required=false npm install -g pnpm && (bit install || pnpm install) && bit compile

CMD ["/bin/bash"]
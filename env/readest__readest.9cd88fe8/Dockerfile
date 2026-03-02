# syntax=docker/dockerfile:1
FROM node:20-bookworm
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     curl     wget     pkg-config     libssl-dev     libgtk-3-dev     libayatana-appindicator3-dev     librsvg2-dev     libwebkit2gtk-4.1-dev     build-essential     && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN --mount=type=ssh,required=false npm install -g pnpm@10.28.1

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/readest__readest.9cd88fe8.git /testbed
WORKDIR /testbed
# RUN git checkout 9cd88fe8399ab40fc8b4f27630530f2deaec5839
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false pnpm install --no-frozen-lockfile

RUN --mount=type=ssh,required=false cd packages/foliate-js && npm install && npm run build

RUN --mount=type=ssh,required=false cd apps/readest-app && pnpm setup-vendors

CMD ["/bin/bash"]
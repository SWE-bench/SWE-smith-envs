FROM node:18-bullseye
RUN apt update && apt install -y git
RUN npm install -g pnpm@10.4.0
RUN git clone https://github.com/swesmith/sveltejs__svelte.6c9717a9 /testbed
WORKDIR /testbed
RUN pnpm install
RUN pnpm playwright install chromium
RUN pnpm exec playwright install-deps

# syntax=docker/dockerfile:1
FROM node:24-alpine
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apk add --no-cache git curl tzdata python3 make g++

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/fosrl__pangolin.e4d4c628.git /testbed
WORKDIR /testbed
# RUN git checkout e4d4c62833eb309ffb2fd9db05d1dbee6b6761f6
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm ci

RUN --mount=type=ssh,required=false cp tsconfig.oss.json tsconfig.json
RUN --mount=type=ssh,required=false echo 'export const build = "oss" as "saas" | "enterprise" | "oss";' > server/build.ts
RUN --mount=type=ssh,required=false echo 'export * from "./sqlite";' > server/db/index.ts
RUN --mount=type=ssh,required=false echo 'export const driver: "pg" | "sqlite" = "sqlite";' >> server/db/index.ts
RUN --mount=type=ssh,required=false mkdir -p config && cp config/config.example.yml config/config.yml

CMD ["npm", "run", "start"]
# syntax=docker/dockerfile:1
FROM node:18
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/calcom__cal.com.3c1d9068.git /testbed
WORKDIR /testbed
# RUN git checkout 3c1d90680890970b536a15aa385fb65da1f0ffcb
RUN --mount=type=ssh,required=false git submodule update --init --recursive

# We need a DATABASE_URL for prisma generate to work during postinstall
# but since we are just building/installing, we can use a mock one.
RUN --mount=type=ssh,required=false DATABASE_URL="postgresql://postgres:password@localhost:5432/calcom" yarn install --frozen-lockfile

CMD ["/bin/bash"]
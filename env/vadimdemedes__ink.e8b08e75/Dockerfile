# syntax=docker/dockerfile:1
FROM node:20
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/vadimdemedes__ink.e8b08e75.git /testbed
WORKDIR /testbed
# RUN git checkout e8b08e75cf272761d63782179019d052e4410545
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false npm install
RUN --mount=type=ssh,required=false npm run build

CMD ["/bin/bash"]
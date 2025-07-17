FROM node:20-bullseye
RUN apt update && apt install -y pkg-config build-essential libpixman-1-0 libpixman-1-dev libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
RUN git clone https://github.com/swesmith/diegomura__react-pdf.ee5c96b8 /testbed
WORKDIR /testbed
RUN yarn install

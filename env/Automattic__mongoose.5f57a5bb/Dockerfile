FROM node:18-bullseye
RUN apt update && apt install -y git  
RUN git clone https://github.com/swesmith/Automattic__mongoose.5f57a5bb /testbed
WORKDIR /testbed
RUN npm install

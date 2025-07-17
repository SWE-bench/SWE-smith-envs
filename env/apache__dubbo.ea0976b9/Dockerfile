FROM ubuntu:22.04
RUN apt-get update &&     apt-get install -y wget git build-essential unzip openjdk-17-jdk maven
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
RUN git clone https://github.com/swesmith/apache__dubbo.ea0976b9 /testbed
WORKDIR /testbed

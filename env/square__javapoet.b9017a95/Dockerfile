FROM maven:3.8-eclipse-temurin-8

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/square__javapoet.b9017a95 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests
CMD ["/bin/bash"]
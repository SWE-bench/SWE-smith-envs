FROM maven:3.8.8-eclipse-temurin-11

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/AsyncHttpClient__async-http-client.ae59f51f /testbed
WORKDIR /testbed
RUN mvn clean install -B -DskipTests -Dgpg.skip
CMD ["/bin/bash"]
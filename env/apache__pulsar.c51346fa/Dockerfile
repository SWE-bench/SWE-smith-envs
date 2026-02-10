FROM maven:3.9.6-eclipse-temurin-17

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__pulsar.c51346fa /testbed
WORKDIR /testbed
# Pulsar is a massive project. We install a subset (pulsar-common) to ensure the Dockerfile is manageable and builds reliably.
RUN mvn clean install -B -q -DskipTests -pl pulsar-common -am

CMD ["/bin/bash"]
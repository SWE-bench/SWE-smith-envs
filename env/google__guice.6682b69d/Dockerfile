FROM maven:3.9.6-eclipse-temurin-17

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/google__guice.6682b69d /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests
CMD ["/bin/bash"]
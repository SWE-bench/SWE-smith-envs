FROM maven:3.9.6-eclipse-temurin-17

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/rest-assured__rest-assured.a67ed7ac /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests
CMD ["/bin/bash"]
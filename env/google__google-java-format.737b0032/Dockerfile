FROM maven:3.9-eclipse-temurin-21

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/google__google-java-format.737b0032 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests

CMD ["/bin/bash"]
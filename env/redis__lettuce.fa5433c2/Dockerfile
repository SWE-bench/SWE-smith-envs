FROM --platform=linux/amd64 maven:3.9.6-eclipse-temurin-17

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/redis__lettuce.fa5433c2 /testbed
WORKDIR /testbed
RUN mvn clean install -B -DskipTests

CMD ["/bin/bash"]
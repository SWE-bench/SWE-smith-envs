FROM maven:3.9.6-eclipse-temurin-11

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/brettwooldridge__HikariCP.bba167f0 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests -Ddocker.skip=true
CMD ["/bin/bash"]
FROM maven:3.9.6-eclipse-temurin-8

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/alibaba__fastjson.c942c834 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests

CMD ["/bin/bash"]
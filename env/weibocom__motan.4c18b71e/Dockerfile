FROM maven:3.8.7-eclipse-temurin-8

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/weibocom__motan.4c18b71e /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests

CMD ["/bin/bash"]
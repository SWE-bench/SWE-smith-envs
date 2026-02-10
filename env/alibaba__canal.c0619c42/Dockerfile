FROM maven:3.8-openjdk-8

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/alibaba__canal.c0619c42 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests -Dgpg.skip
CMD ["/bin/bash"]
FROM maven:3.8.7-eclipse-temurin-11

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__seatunnel.ed021460 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests -pl seatunnel-common,seatunnel-api -am
CMD ["/bin/bash"]
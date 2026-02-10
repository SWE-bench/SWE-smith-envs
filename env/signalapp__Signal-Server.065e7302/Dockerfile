FROM eclipse-temurin:24-jdk-noble

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/signalapp__Signal-Server.065e7302 /testbed
WORKDIR /testbed
RUN ./mvnw clean install -B -q -DskipTests
CMD ["/bin/bash"]
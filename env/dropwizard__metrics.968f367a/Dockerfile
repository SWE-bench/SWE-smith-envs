FROM eclipse-temurin:17-jdk-jammy

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/dropwizard__metrics.968f367a /testbed
WORKDIR /testbed
RUN ./mvnw clean install -B -q -DskipTests
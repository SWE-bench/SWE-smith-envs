FROM eclipse-temurin:17-jdk-jammy

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/traccar__traccar.dc1dfe15 /testbed
WORKDIR /testbed
RUN ./gradlew assemble --no-daemon --console=plain

CMD ["/bin/bash"]
FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__iceberg.15485f55 /testbed
WORKDIR /testbed
# Use assemble to avoid running integration tests during build
RUN ./gradlew assemble --no-daemon --console=plain

CMD ["/bin/bash"]
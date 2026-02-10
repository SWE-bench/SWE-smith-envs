FROM eclipse-temurin:11-jdk-focal

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/remkop__picocli.121646e4 /testbed
WORKDIR /testbed
RUN ./gradlew assemble --no-daemon --console=plain
CMD ["/bin/bash"]
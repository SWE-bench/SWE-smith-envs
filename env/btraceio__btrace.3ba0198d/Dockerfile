FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git openjdk-8-jdk openjdk-11-jdk && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/btraceio__btrace.3ba0198d /testbed
WORKDIR /testbed
RUN ./gradlew assemble --no-daemon --console=plain
CMD ["/bin/bash"]
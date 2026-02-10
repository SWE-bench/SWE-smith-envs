FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/LMAX-Exchange__disruptor.c871ca49 /testbed
WORKDIR /testbed
RUN ./gradlew assemble --no-daemon --console=plain

CMD ["/bin/bash"]
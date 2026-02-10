FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/reactor__reactor-core.2198701c /testbed
WORKDIR /testbed
RUN ./gradlew classes --no-daemon --console=plain

CMD ["/bin/bash"]
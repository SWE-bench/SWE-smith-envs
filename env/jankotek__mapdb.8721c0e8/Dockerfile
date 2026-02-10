FROM eclipse-temurin:8-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/jankotek__mapdb.8721c0e8 /testbed
WORKDIR /testbed
RUN ./gradlew assemble --no-daemon --console=plain

CMD ["/bin/bash"]
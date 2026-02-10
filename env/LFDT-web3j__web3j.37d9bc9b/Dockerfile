FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/LFDT-web3j__web3j.37d9bc9b /testbed
WORKDIR /testbed
RUN ./gradlew assemble --no-daemon --console=plain

CMD ["/bin/bash"]
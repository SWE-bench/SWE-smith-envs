FROM eclipse-temurin:8-jdk

RUN apt-get update &&     apt-get install -y git maven curl &&     curl -fsSL https://deb.nodesource.com/setup_18.x | bash - &&     apt-get install -y nodejs &&     rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/socketio__socket.io-client-java.eb438de0 /testbed
WORKDIR /testbed
RUN mvn install -B -q -DskipTests -Dgpg.skip
CMD ["/bin/bash"]
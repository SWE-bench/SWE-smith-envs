FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y git maven wget &&     wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_$( [ $(uname -m) = "aarch64" ] && echo "arm64" || echo "amd64" ) -O /usr/bin/yq &&     chmod +x /usr/bin/yq &&     rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/strimzi__strimzi-kafka-operator.2d31a2b6 /testbed
WORKDIR /testbed
RUN mvn clean install -B -DskipTests -q

CMD ["/bin/bash"]
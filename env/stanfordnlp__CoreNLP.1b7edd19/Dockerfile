FROM maven:3.9.6-eclipse-temurin-17

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/stanfordnlp__CoreNLP.1b7edd19 /testbed
WORKDIR /testbed
# Use compile instead of install to avoid trying to move the missing models JAR to the local repo
RUN mvn clean compile -B -q -DskipTests

CMD ["/bin/bash"]
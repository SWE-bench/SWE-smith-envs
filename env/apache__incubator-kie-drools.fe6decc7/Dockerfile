FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git wget curl && rm -rf /var/lib/apt/lists/*

ARG MAVEN_VERSION=3.9.9
RUN wget https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    tar -xzf apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt && \
    ln -s /opt/apache-maven-${MAVEN_VERSION}/bin/mvn /usr/bin/mvn && \
    rm apache-maven-${MAVEN_VERSION}-bin.tar.gz

RUN git clone https://github.com/swesmith/apache__incubator-kie-drools.fe6decc7 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests -Denforcer.skip=true -pl drools-core,drools-compiler -am
CMD ["/bin/bash"]
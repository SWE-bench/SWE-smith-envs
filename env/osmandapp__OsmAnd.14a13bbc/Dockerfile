FROM eclipse-temurin:17-jdk-focal

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/osmandapp__OsmAnd.14a13bbc /testbed
WORKDIR /testbed
# Increase memory for Gradle and Java compiler
ENV GRADLE_OPTS="-Xmx2048m -Dorg.gradle.jvmargs='-Xmx2048m -XX:MaxMetaspaceSize=512m'"

RUN ./gradlew :OsmAnd-java:assemble --no-daemon --console=plain

CMD ["/bin/bash"]
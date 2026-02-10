FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/runelite__runelite.6e2d0b20 /testbed
WORKDIR /testbed
# Use multiple retries for the initial gradle run to ensure the wrapper and dependencies are downloaded
RUN (./gradlew assemble -x test -x javadoc -x checkstyleMain -x checkstyleTest --no-daemon --console=plain || \
     ./gradlew assemble -x test -x javadoc -x checkstyleMain -x checkstyleTest --no-daemon --console=plain || \
     ./gradlew assemble -x test -x javadoc -x checkstyleMain -x checkstyleTest --no-daemon --console=plain)
CMD ["/bin/bash"]
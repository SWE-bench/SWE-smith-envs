FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/spring-projects__spring-boot.f73a809c /testbed
WORKDIR /testbed
# Use -x javadoc to skip the failing javadoc task
RUN ./gradlew :core:spring-boot:assemble -x javadoc --no-daemon --console=plain

CMD ["/bin/bash"]
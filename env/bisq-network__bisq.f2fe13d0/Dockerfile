FROM eclipse-temurin:11-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/bisq-network__bisq.f2fe13d0 /testbed
WORKDIR /testbed
RUN ./gradlew build -x test --no-daemon --console=plain -Dorg.gradle.dependency.verification=off

CMD ["/bin/bash"]
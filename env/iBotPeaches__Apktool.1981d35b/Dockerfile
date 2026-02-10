FROM eclipse-temurin:11-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/iBotPeaches__Apktool.1981d35b /testbed
WORKDIR /testbed
RUN ./gradlew assemble --no-daemon --console=plain

CMD ["/bin/bash"]
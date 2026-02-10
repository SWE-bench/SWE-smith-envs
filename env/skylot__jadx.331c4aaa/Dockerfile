FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/skylot__jadx.331c4aaa /testbed
WORKDIR /testbed
# Build specific modules using full task paths to avoid memory issues
RUN ./gradlew :jadx-core:jar :jadx-cli:jar -Dorg.gradle.jvmargs="-Xmx1536m" --no-daemon --console=plain

CMD ["/bin/bash"]
FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/diffplug__spotless.8e776ec8 /testbed
WORKDIR /testbed
RUN ./gradlew :lib:build :testlib:build -x test --no-daemon --console=plain
CMD ["/bin/bash"]
FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__jmeter.b1843c2a /testbed
WORKDIR /testbed
RUN ./gradlew help --no-daemon --console=plain
# Note: Full build/install of JMeter can be very heavy. 
# We'll use classes to ensure dependencies are downloaded.
RUN ./gradlew classes --no-daemon --console=plain

CMD ["/bin/bash"]
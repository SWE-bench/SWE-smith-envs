FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/PaperMC__Paper.81b91224 /testbed
WORKDIR /testbed
# Paper uses a complex build system that often requires initializing submodules or running setup scripts.
# We run gradlew help to trigger wrapper download and basic initialization.
RUN ./gradlew --no-daemon --console=plain help

CMD ["/bin/bash"]
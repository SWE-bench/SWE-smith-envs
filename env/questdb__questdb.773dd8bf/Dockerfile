FROM eclipse-temurin:17-jdk-focal

# Install system dependencies
RUN apt-get update && apt-get install -y     git     cmake     build-essential     maven     curl     && rm -rf /var/lib/apt/lists/*

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"


# Clone the repository
RUN git clone https://github.com/swesmith/questdb__questdb.773dd8bf /testbed
WORKDIR /testbed
# Install dependencies and build native components
# We use the recommended build profile and skip tests during installation
RUN mvn clean install -B -q -DskipTests -P build-web-console

CMD ["/bin/bash"]
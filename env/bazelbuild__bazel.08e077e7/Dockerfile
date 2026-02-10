FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y     git     build-essential     python3     unzip     zip     curl     ca-certificates     && rm -rf /var/lib/apt/lists/*

# Install Bazelisk
RUN curl -L https://github.com/bazelbuild/bazelisk/releases/download/v1.19.0/bazelisk-linux-amd64 -o /usr/local/bin/bazel &&     chmod +x /usr/local/bin/bazel


# Shallow clone the repository
RUN git clone https://github.com/swesmith/bazelbuild__bazel.08e077e7 /testbed
WORKDIR /testbed
# Pre-fetch dependencies
RUN bazel fetch //src:bazel

CMD ["/bin/bash"]
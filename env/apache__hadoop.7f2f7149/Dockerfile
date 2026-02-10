FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y \
    git \
    maven \
    build-essential \
    autoconf \
    automake \
    libtool \
    cmake \
    zlib1g-dev \
    pkg-config \
    libssl-dev \
    libsasl2-dev \
    && rm -rf /var/lib/apt/lists/*


# Clone the repository
RUN git clone https://github.com/swesmith/apache__hadoop.7f2f7149 /testbed
WORKDIR /testbed
# Build specific modules to save time and ensure stability in a container environment
# We focus on hadoop-common as it's the core.
RUN mvn clean install -B -q -DskipTests -pl hadoop-common-project/hadoop-common -am

CMD ["/bin/bash"]
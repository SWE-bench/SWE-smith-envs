FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/HMCL-dev__HMCL.79a1c3af /testbed
WORKDIR /testbed
RUN ./gradlew --no-daemon --console=plain assemble -x test

CMD ["/bin/bash"]
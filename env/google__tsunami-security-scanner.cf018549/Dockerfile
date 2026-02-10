FROM gradle:8.5-jdk21

USER root
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/google__tsunami-security-scanner.cf018549 /testbed
WORKDIR /testbed
RUN gradle classes --no-daemon --console=plain

CMD ["/bin/bash"]
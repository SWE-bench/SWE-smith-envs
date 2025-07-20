FROM mcr.microsoft.com/devcontainers/dotnet:dev-9.0-noble
RUN git clone https://github.com/swesmith/microsoft__VirtualClient.0bb16489 /testbed
WORKDIR /testbed
RUN chmod +x *.sh  && ./build.sh  && (./build-test.sh || true)
CMD ["/bin/bash"]

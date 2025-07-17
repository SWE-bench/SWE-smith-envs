FROM gcc:11
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN git clone https://github.com/swesmith/OpenMathLib__OpenBLAS.a06bcf83 /testbed
WORKDIR /testbed
RUN apt update && apt install -y cmake
RUN mkdir -p build && cd build && cmake .. && make -j 4 && ctest -j 4

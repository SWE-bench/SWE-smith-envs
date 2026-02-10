FROM runmymind/docker-android-sdk:latest

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/PhilJay__MPAndroidChart.9c7275a0 /testbed
WORKDIR /testbed
RUN ./gradlew assembleDebug --no-daemon --console=plain
CMD ["/bin/bash"]
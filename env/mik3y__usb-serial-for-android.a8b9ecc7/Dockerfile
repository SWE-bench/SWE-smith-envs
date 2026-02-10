FROM runmymind/docker-android-sdk:latest

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/mik3y__usb-serial-for-android.a8b9ecc7 /testbed
WORKDIR /testbed
RUN ./gradlew assembleDebug --no-daemon --console=plain

CMD ["/bin/bash"]
FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y     openjdk-11-jdk-headless     git     wget     unzip     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*

ENV ANDROID_SDK_ROOT=/opt/android-sdk
RUN mkdir -p ${ANDROID_SDK_ROOT}/cmdline-tools &&     wget -q https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip -O /tmp/tools.zip &&     unzip -q /tmp/tools.zip -d ${ANDROID_SDK_ROOT}/cmdline-tools &&     mv ${ANDROID_SDK_ROOT}/cmdline-tools/cmdline-tools ${ANDROID_SDK_ROOT}/cmdline-tools/latest &&     rm /tmp/tools.zip

ENV PATH=${PATH}:${ANDROID_SDK_ROOT}/cmdline-tools/latest/bin:${ANDROID_SDK_ROOT}/platform-tools

RUN git clone https://github.com/swesmith/ReactiveX__RxAndroid.d7bd9b74 /testbed
WORKDIR /testbed
RUN yes | sdkmanager --licenses &&     sdkmanager "platforms;android-31" "build-tools;31.0.0"

# Only build the library module to avoid AAPT2 issues with the sample app on ARM
RUN ./gradlew :rxandroid:assembleDebug --no-daemon --console=plain

CMD ["/bin/bash"]
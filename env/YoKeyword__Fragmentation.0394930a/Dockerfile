FROM --platform=linux/amd64 eclipse-temurin:8-jdk-jammy

RUN apt-get update && apt-get install -y git wget unzip libncurses5 && rm -rf /var/lib/apt/lists/*

ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV ANDROID_HOME=/opt/android-sdk

RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools && \
    wget -q https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip -O cmdline-tools.zip && \
    unzip -q cmdline-tools.zip -d $ANDROID_SDK_ROOT/cmdline-tools && \
    mv $ANDROID_SDK_ROOT/cmdline-tools/cmdline-tools $ANDROID_SDK_ROOT/cmdline-tools/latest && \
    rm cmdline-tools.zip

ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

RUN yes | sdkmanager --licenses && \
    sdkmanager "platform-tools" "platforms;android-28" "build-tools;28.0.3"

RUN git clone https://github.com/swesmith/YoKeyword__Fragmentation.0394930a /testbed
WORKDIR /testbed
RUN echo "sdk.dir=$ANDROID_SDK_ROOT" > local.properties

# Android Gradle Plugin 3.2.1/Gradle 4.6 might need this for modern environments
RUN ./gradlew assembleDebug --no-daemon --console=plain -Pandroid.enableAapt2=false || ./gradlew assembleDebug --no-daemon --console=plain

CMD ["/bin/bash"]
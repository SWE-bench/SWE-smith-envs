FROM eclipse-temurin:17-jdk-jammy

RUN apt-get update && apt-get install -y git wget unzip && rm -rf /var/lib/apt/lists/*

ENV ANDROID_SDK_ROOT=/opt/android-sdk
RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools && \
    wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O /tmp/tools.zip && \
    unzip -q /tmp/tools.zip -d $ANDROID_SDK_ROOT/cmdline-tools && \
    mv $ANDROID_SDK_ROOT/cmdline-tools/cmdline-tools $ANDROID_SDK_ROOT/cmdline-tools/latest && \
    rm /tmp/tools.zip

ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

RUN yes | sdkmanager --licenses && \
    sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"

RUN git clone https://github.com/swesmith/youlookwhat__CloudReader.f5b9e67e /testbed
WORKDIR /testbed
RUN sed -i 's|distributionUrl=.*|distributionUrl=https\\://services.gradle.org/distributions/gradle-8.0-bin.zip|' gradle/wrapper/gradle-wrapper.properties

RUN echo "sdk.dir=/opt/android-sdk" > local.properties

# Verify installation by running dependencies task (skips aapt2)
RUN ./gradlew dependencies --no-daemon --console=plain

CMD ["/bin/bash"]
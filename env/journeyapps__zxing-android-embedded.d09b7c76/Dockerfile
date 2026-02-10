FROM eclipse-temurin:11-jdk

RUN apt-get update && apt-get install -y git wget unzip libstdc++6 && rm -rf /var/lib/apt/lists/*

ENV ANDROID_SDK_ROOT=/opt/android-sdk
RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools &&     wget -q https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip -O cmdline-tools.zip &&     unzip -q cmdline-tools.zip -d $ANDROID_SDK_ROOT/cmdline-tools &&     mv $ANDROID_SDK_ROOT/cmdline-tools/cmdline-tools $ANDROID_SDK_ROOT/cmdline-tools/latest &&     rm cmdline-tools.zip

ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

RUN yes | sdkmanager --licenses &&     sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.3"

RUN git clone https://github.com/swesmith/journeyapps__zxing-android-embedded.d09b7c76 /testbed
WORKDIR /testbed
RUN ./gradlew :zxing-android-embedded:assembleDebug --no-daemon --console=plain

CMD ["/bin/bash"]
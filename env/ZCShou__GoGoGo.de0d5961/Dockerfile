FROM --platform=linux/amd64 eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git wget unzip && rm -rf /var/lib/apt/lists/*

ENV ANDROID_SDK_ROOT=/opt/android-sdk
RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools &&     wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O /tmp/tools.zip &&     unzip -q /tmp/tools.zip -d $ANDROID_SDK_ROOT/cmdline-tools &&     mv $ANDROID_SDK_ROOT/cmdline-tools/cmdline-tools $ANDROID_SDK_ROOT/cmdline-tools/latest &&     rm /tmp/tools.zip

ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

RUN yes | sdkmanager --licenses
RUN sdkmanager "platforms;android-32" "platform-tools"

RUN git clone https://github.com/swesmith/ZCShou__GoGoGo.de0d5961 /testbed
WORKDIR /testbed
RUN sed -i 's/..\\keystore\\GoGoGo.jks/..\/keystore\/GoGoGo.jks/g' app/build.gradle
RUN echo "MAPS_API_KEY=unused" > local.properties && echo "MAPS_SAFE_CODE=unused" >> local.properties

RUN sed -i 's/locationOption.setIgnoreCacheException(true);//g' app/src/main/java/com/zcshou/gogogo/MainActivity.java

RUN chmod +x gradlew && ./gradlew assembleDebug --no-daemon --console=plain || true

CMD ["/bin/bash"]
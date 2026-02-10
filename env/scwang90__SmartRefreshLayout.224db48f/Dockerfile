FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git wget unzip libncurses6 && rm -rf /var/lib/apt/lists/*

# Install Android SDK
ENV ANDROID_HOME=/opt/android-sdk
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools &&     wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O cmdline-tools.zip &&     unzip -q cmdline-tools.zip -d ${ANDROID_HOME}/cmdline-tools &&     mv ${ANDROID_HOME}/cmdline-tools/cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest &&     rm cmdline-tools.zip

ENV PATH=${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools

# Accept licenses
RUN yes | sdkmanager --licenses

RUN git clone https://github.com/swesmith/scwang90__SmartRefreshLayout.224db48f /testbed
WORKDIR /testbed
RUN chmod +x gradlew

# Download dependencies using help task to avoid architecture-specific build failures (AAPT2) during build time
RUN ./gradlew help --no-daemon --console=plain

CMD ["/bin/bash"]
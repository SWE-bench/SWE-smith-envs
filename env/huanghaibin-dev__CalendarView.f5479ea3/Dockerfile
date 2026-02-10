FROM eclipse-temurin:11-jdk-focal

# Configure multi-arch for AAPT2 (AMD64) on ARM64 host
RUN dpkg --add-architecture amd64 && \
    sed -i 's/http:\/\/ports.ubuntu.com\/ubuntu-ports/http:\/\/archive.ubuntu.com\/ubuntu/g' /etc/apt/sources.list && \
    echo "deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports focal main universe restricted multiverse" > /etc/apt/sources.list.d/arm64.list && \
    echo "deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports focal-updates main universe restricted multiverse" >> /etc/apt/sources.list.d/arm64.list && \
    echo "deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports focal-security main universe restricted multiverse" >> /etc/apt/sources.list.d/arm64.list && \
    sed -i 's/^deb /deb [arch=amd64] /' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y git wget unzip libc6:amd64 libstdc++6:amd64 zlib1g:amd64 && \
    rm -rf /var/lib/apt/lists/*

# Install Gradle 5.6.4
RUN wget -q https://services.gradle.org/distributions/gradle-5.6.4-bin.zip -O /tmp/gradle.zip && \
    unzip -q /tmp/gradle.zip -d /opt && \
    rm /tmp/gradle.zip
ENV GRADLE_HOME=/opt/gradle-5.6.4
ENV PATH=$PATH:$GRADLE_HOME/bin

# Install Android SDK
ENV ANDROID_SDK_ROOT=/opt/android-sdk
RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools && \
    wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O /tmp/tools.zip && \
    unzip -q /tmp/tools.zip -d $ANDROID_SDK_ROOT/cmdline-tools && \
    mv $ANDROID_SDK_ROOT/cmdline-tools/cmdline-tools $ANDROID_SDK_ROOT/cmdline-tools/latest && \
    rm /tmp/tools.zip

ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

RUN yes | sdkmanager --licenses && \
    sdkmanager "platform-tools" "platforms;android-28" "build-tools;28.0.3"

# Fix XML validation error in SDK
RUN find $ANDROID_SDK_ROOT -name "package.xml" -exec sed -i '/<base-extension/,/<\/base-extension>/d' {} +

RUN git clone https://github.com/swesmith/huanghaibin-dev__CalendarView.f5479ea3 /testbed
WORKDIR /testbed
# Fix build scripts and JCenter issues
RUN find . -name "*.gradle" -exec sed -i 's/jcenter()/mavenCentral()/g' {} + && \
    find . -name "*.gradle" -exec sed -i '/com.jfrog.bintray.gradle/d' {} + && \
    find . -name "*.gradle" -exec sed -i "/apply plugin: 'com.jfrog.bintray'/d" {} + && \
    find . -name "*.gradle" -exec sed -i "s/apply from: '..\/script\/gradle-jcenter-push.gradle'/\/\/ bypassed/g" {} + && \
    echo "sdk.dir=/opt/android-sdk" > local.properties

# Build the project
RUN gradle assembleDebug --no-daemon --console=plain

CMD ["/bin/bash"]
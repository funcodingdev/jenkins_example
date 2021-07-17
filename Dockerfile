FROM jenkinsci/blueocean:latest

USER root

ARG SDK_TOOL_URL="https://dl.google.com/android/repository/commandlinetools-linux-7302050_latest.zip"
ENV ANDROID_HOME="/usr/android_sdk"

RUN mkdir -p $ANDROID_HOME && \
    cd $ANDROID_HOME && \
    curl -o sdk.zip $SDK_TOOL_URL && \
    unzip sdk.zip && \
    rm sdk.zip

RUN echo y | $ANDROID_HOME/cmdline-tools/bin/sdkmanager --sdk_root=$ANDROID_HOME "cmdline-tools;latest" && \
    yes | $ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager --licenses && \
    $ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager "platform-tools" && \
    touch ~/.android/repositories.cfg

ENV PATH $ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH

RUN yes | sdkmanager "platforms;android-31" "platforms;android-30" "platforms;android-29" "platforms;android-38" "platforms;android-27" "platforms;android-26" "platforms;android-25"
RUN yes | sdkmanager "build-tools;31.0.0" "build-tools;30.0.3" "build-tools;30.0.2"
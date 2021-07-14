#!/bin/bash

echo "###############开始构建#################"
cd ${WORKSPACE}
ls
./gradlew clean assembleDebug --stacktrace
echo "###############构建结束#################"
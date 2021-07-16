#!/bin/bash

echo "###############开始构建#################"
buildType=$1
echo $buildType

cd ${WORKSPACE}
ls
./gradlew clean assemble${buildType} --stacktrace
echo "###############构建结束#################"
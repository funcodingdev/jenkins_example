#!/bin/bash

echo "###############开始构建#################"
buildType=$1
buildBranch=$2
buildNotify=$3

echo "buildType: ${buildType}"
echo "buildBranch: ${buildBranch}"
echo "buildNotify: ${buildNotify}"

cd ${WORKSPACE}
ls
./gradlew clean assemble${buildType} --stacktrace



echo "###############构建结束#################"
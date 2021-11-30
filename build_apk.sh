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



curl -F "file=@/tmp/example.apk" -F "uKey=b4aad0c0a8dbde13ed50daa3fa6a226c" -F "_api_key=1c54a1958d488918d75ac83f0995298d" https://www.pgyer.com/apiv2/app/upload
echo "###############构建结束#################"
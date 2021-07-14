#!/bin/bash

echo "###############开始构建#################"
cd ${WORKSPACE}
ls
.gradlew clean assembleDebug
echo "###############构建结束#################"
#!/bin/bash
#export http_proxy="127.0.0.1:8118"
#export https_proxy="127.0.0.1:8118"
ls
cd ${WORKSPACE}
ls
./gradlew clean assemble${buildType} --stacktrace
if [ "${notify}" = "true" ]
then
    ding=1
else
    ding=0
fi


file_apk=`ls ./app/build/outputs/apk/*.apk`
if [ "${file_apk}" = "" ]
then
	exit 1
fi

echo "----"
echo ${file_apk}
file_name=${file_apk##*/}

arr=(${file_name//_/ })
version_name=${arr[1]}
version_code=${arr[2]}
echo $version_name
echo $version_code

if [ $ding -eq 0 ]
then
	echo "不发消息"
	exit 0
fi

echo "##############################"
echo $branch
echo "###############################3"
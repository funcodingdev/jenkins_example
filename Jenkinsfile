#!/usr/bin/env groovy
pipeline {
    agent any
    parameters {
        choice(name: 'buildType', choices: 'Debug\nRelease', description: "构建类型")
        booleanParam(name: 'isNotify', defaultValue: false, description: '是否邮件通知')
    }
    stages {

    }
}
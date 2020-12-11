#!/bin/bash


WORKSPACE=/home/jenkins/jenkins/jenkins-data/jenkins_home/workspace/pipe-maven

docker run --rm -v "/var/jenkins_home/workspace/pipe-maven/java-app:/app" -v "/root/.m2:/root/.m2" -w /app maven:3-alpine "$@"

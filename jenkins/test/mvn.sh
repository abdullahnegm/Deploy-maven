#!/bin/bash


WORKSPACE=/home/jenkins/jenkins/jenkins-data/jenkins_home/workspace/maven-job


docker run --rm -v "$WORKSPACE/java-app:/app" -v '/root/.m2:/root/.m2' -w /app maven:3-alpine "$@"

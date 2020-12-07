#!/bin/bash

cp java-app/target/*.jar jenkins/build

echo '*********************************************'
echo '********* Building Now *********************'
echo '*********************************************'

docker-compose -f jenkins/build/docker-compose.yml build --no-cache

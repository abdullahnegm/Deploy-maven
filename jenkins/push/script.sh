#!/bin/bash

echo "*************************"
echo "******Pushing Image******"
echo "*************************"


echo "*************************"
echo "****Logging in Docker****"
docker login -u respect1 -p $PASS
echo "*************************"
echo "******Tagging image******"
docker tag maven:$BUILD_TAG respect1/maven:$BUILD_TAG
echo "*************************"
echo "******Pusing image*******"
docker push respect1/maven:$BUILD_TAG

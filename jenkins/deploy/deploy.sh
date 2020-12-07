#!/bin/bash

echo "maven" > /tmp/.auth
echo "$BUILD_TAG" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth

scp /tmp/.auth donkey@192.168.1.11:/tmp/.auth
scp jenkins/deploy/publish.sh donkey@192.168.1.11:/tmp/publish.sh
ssh donkey@192.168.1.11 "/tmp/publish.sh"

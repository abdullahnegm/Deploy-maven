#!/bin/bash

echo "maven" > /tmp/.auth
echo "$BUILD_TAG" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth

scp -i /opt/id_rsa /tmp/.auth donkey@192.168.1.11:/tmp/.auth
scp -i /opt/id_rsa jenkins/deploy/publish.sh donkey@192.168.1.11:/tmp/publish.sh
ssh -i /opt/id_rsa donkey@192.168.1.11 "/tmp/publish.sh"

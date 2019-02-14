#!/usr/bin/env bash
sudo docker build --no-cache -t webstreamer/node-gyp-gcc54 .
echo 'you may tag with below command'
echo 'sudo docker tag <imageID> webstreamer/node-gyp-gcc54:0.1'
echo 'docker push webstreamer/nvm-py2-gcc54:0.1'


#!/usr/bin/env bash
sudo docker run --rm -v $PWD:/home/ci/project -it webstreamer/py2-gcc54 /bin/bash

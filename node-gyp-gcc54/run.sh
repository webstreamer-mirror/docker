#!/usr/bin/env bash
sudo docker run --rm -v ~/.conan/data:/home/conan/.conan/data -it webstreamer/node-gyp-gcc54 /bin/bash

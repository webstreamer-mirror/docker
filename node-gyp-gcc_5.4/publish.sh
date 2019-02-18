imageID=$1
tag=$2

sudo docker login  && \
sudo docker tag $imageID webstreamer/node-gyp-gcc54:$tag && \
sudo docker push webstreamer/node-gyp-gcc54:$tag

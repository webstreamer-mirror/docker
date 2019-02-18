imageID=$1
tag=$2

sudo docker login  && \
sudo docker tag $imageID webstreamer/gcc54:$tag && \
sudo docker push webstreamer/gcc54:$tag

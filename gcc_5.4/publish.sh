imageID=$1
tag=$2

sudo docker login
docker tag $imageID webstreamer/gcc54:$tag
docker push webstreamer/gcc54:$tag
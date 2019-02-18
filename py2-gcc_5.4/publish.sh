imageID=$1
tag=$2

sudo docker login
docker tag $imageID webstreamer/py2-gcc54:$tag
docker push webstreamer/py2-gcc54:$tag
imageID=$1
tag=$2

sudo docker login
sudo docker tag $imageID webstreamer/py2-gcc54:$tag
sudo docker push webstreamer/py2-gcc54:$tag
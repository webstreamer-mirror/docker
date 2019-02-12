



# command for dev

Remove exited container
```sh
sudo docker rm -v $(sudo docker ps -a -q -f status=exited)
```

Remove no used image
```sh
sudo docker rmi $(sudo docker images -f "dangling=true" -q)
```

Remove no use volumn
```sh
sudo docker volume rm $(sudo docker volume ls -qf dangling=true)
```

Push image to docker hub
```sh
# step1 : find the local image ID
sudo docker images
# step2 : login DockHub：
sudo docker login --username=username --password=password --email=email
# step3 : tag
sudo docker tag <imageID> <namespace>/<image name>:<version tag eg latest>
# step4 : push image
sudo docker push <namespace>/<image name>
 
```
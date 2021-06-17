#!/bin/bash

sudo docker stop portainer
sudo docker rm portainer
sudo docker image rm $(sudo docker image ls | grep portainer | awk '{print $3}')
sudo docker run -d -v "/var/run/docker.sock:/var/run/docker.sock" --net=host --restart always --name portainer -v portainer_data:/data portainer/portainer-ce

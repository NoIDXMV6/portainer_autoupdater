#!/bin/bash
sudo docker stop portainer
sudo docker rm portainer
sudo docker pull portainer/portainer-ce:lts
sudo docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:lts
sudo docker images -q portainer/portainer-ce  --filter=dangling=true | sudo xargs docker rmi

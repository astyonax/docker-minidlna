#! /bin/bash

dockerImage=minidlna
dockerImageName=miniDLNA-server

docker build -t ${dockerImage} .

docker stop ${dockerImageName}
docker rm ${dockerImageName}

docker run --name ${dockerImageName} --net host -v /mnt/kingstone/photoshow/Photos/:/media/ -d -i -t ${dockerImageName}

#!/bin/zsh
#
sudo apt-get update -q2
sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common -q2
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
sudo apt-get install docker-ce -q2
sudo docker run hello-world


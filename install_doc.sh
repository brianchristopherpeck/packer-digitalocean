#!/bin/bash

echo "Install Docker"

echo "Installing Docker dependencies"
apt-get ca-certificates software-properties-common # apt-transport-https & curl already installed above

echo "Get Docker gpg key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Verify gpg key"
apt-key fingerprint 0EBFCD88

echo "Add Docker repository"
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "Run apt-get update to install Docker"
apt-get update

echo "Install Docker Community Addition"
apt-get install -y docker-ce

echo "Run docker hello-world to verify installation success"
docker run hello-world

echo "Installing nginx"
apt-get install -y nginx

echo "Check nginx is installed"
nginx -t

echo "Start nginx"
service nginx start
#!/bin/bash
export ver="$1"
sudo snap install docker

unzip -version
if [ $? -ne 0 ]; then
sudo apt update
sudo apt install unzip
sudo apt autoremove
fi
aws --version
if [ $? -ne 0 ]; then
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
fi
wget https://github.com/Bery-g/lazania/archive/refs/heads/main.zip
unzip main.zip
cd lazania-main
docker-compose down
sudo docker rmi -f $(sudo docker images -q)
sudo docker pull -a 072932127557.dkr.ecr.us-east-2.amazonaws.com/lazania
sudo docker-compose up

#!/bin/bash
sudo docker rmi -f $(sudo docker images -q)
sudo docker pull -a 072932127557.dkr.ecr.us-east-2.amazonaws.com/lazania
sudo docker-compose up 
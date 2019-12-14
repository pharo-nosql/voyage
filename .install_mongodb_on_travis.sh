#!/bin/bash

sudo apt-get remove mongodb-org-server mongodb-org-shell
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
# 3.x key???
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
# version 4 key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

if [ "$MONGODB" = "3.6" ]; then
    echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list
    sudo apt-get update
    sudo apt-get install mongodb-org-server=3.6.11 mongodb-org-shell=3.6.11
    # service should be started automatically
elif [ "$MONGODB" = "4.0" ]; then
    echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list
    sudo apt-get update
    sudo apt-get install mongodb-org-server=4.0.8 mongodb-org-shell=4.0.8
    # service should be started automatically
else
    echo "Invalid MongoDB version"
    exit 1
fi;

mkdir db
1>db/logs mongod --dbpath=db &

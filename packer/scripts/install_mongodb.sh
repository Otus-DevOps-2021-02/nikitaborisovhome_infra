#!/bin/bash
wget -qO - http://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
sleep 60
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get -y update
sleep 60
apt-get -y install mongodb-org
systemctl start mongod
systemctl enable mongod

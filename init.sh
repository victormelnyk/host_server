#!/usr/bin/env bash
# create new password for root

# add user (from root)
# adduser uadmin
#   # enter data
# usermod -aG sudo uadmin

# clone host_server (from uadmin)
# git clone https://github.com/victormelnyk/host_server.git
# cd host_server
# chmod +x *.sh
#   # sudo
# ./init.sh
#   # sudo

# update (from uadmin with sudo)
apt-get update
apt-get upgrade

# install docker
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
apt-get update
  # check
  # apt-cache policy docker-engine
apt-get install -y docker-engine
  # check
  # systemctl status docker
usermod -aG docker uadmin

# install docker-composer
apt-get -y install python-pip
pip install docker-compose

# create data folder
mkdir -p /data
mkdir -p /data/postgresql
mkdir -p /data/jenkins
chown uadmin:uadmin -R /data

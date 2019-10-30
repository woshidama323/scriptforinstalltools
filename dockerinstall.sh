#!/bin/bash

#Install required packages. yum-utils provides the yum-config-manager utility, and device-mapper-persistent-data and lvm2 are required by the devicemapper storage driver
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

#Use the following command to set up the stable repository. You always need the stable repository, even if you want to install builds from the edge or test repositories as well.
 sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

#Optional: Enable the edge and test repositories. These repositories are included in the docker.repo file above but are disabled by default. You can enable them alongside the stable repository.
sudo yum-config-manager --enable docker-ce-edge
sudo yum-config-manager --enable docker-ce-test


#You can disable the edge or test repository by running the yum-config-manager command with the --disable flag. To re-enable it, use the --enable flag. The following command disables the edge repository.
sudo yum-config-manager --disable docker-ce-edge

#Install the latest version of Docker CE, or go to the next step to install a specific version:
sudo yum install docker-ce

sudo systemctl start docker

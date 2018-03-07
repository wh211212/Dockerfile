#!/bin/bash
##################################################
# Functions: Onekey Install Docker CE for CentOS 7
# Maintainer: shaonbean  yunwei@aniu.tv
# Changelog:
# 2018-03-06  wanghui  initial
##################################################
# set -xe
# uninstall old version
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

# set up docker ce repository
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce -y

# start docker & add docker default runlevel

sudo systemctl start docker

sudo systemctl enable docker

# uninstall docker ce

#sudo yum remove docker-ce -y

#sudo rm -rf /var/lib/docker

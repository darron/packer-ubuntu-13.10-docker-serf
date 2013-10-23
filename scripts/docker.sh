#!/bin/bash

# Add the Docker repository to your apt sources list.
sudo apt-get install curl wget
sudo sh -c "wget -qO- https://get.docker.io/gpg | apt-key add -"
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

# Update your sources
sudo apt-get update

# Install
sudo apt-get -y install lxc-docker

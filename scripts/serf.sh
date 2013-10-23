#!/bin/bash
sudo apt-get -y install unzip
cd /tmp
wget https://dl.bintray.com/mitchellh/serf/0.1.1_linux_amd64.zip
unzip 0.1*
sudo mv serf /usr/local/bin
wget https://gist.github.com/darron/7126986/raw/0ebab0ded12ac0ebe39a4b2b591ed67d721458ea/gistfile1.txt
sudo mv gistfile1.txt /etc/init/serf.conf
cd /etc/init.d; sudo ln -s /lib/init/upstart-job serf
sudo service serf start
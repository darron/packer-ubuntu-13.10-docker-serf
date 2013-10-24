#!/bin/bash
sudo apt-get -y install unzip
cd /tmp
wget https://dl.bintray.com/mitchellh/serf/0.1.1_linux_amd64.zip
unzip 0.1*
sudo mv serf /usr/local/bin
wget https://gist.github.com/darron/7126986/raw/c023b0b7bc48c8a1f7ce52f065d38b0e70d42aba/serf.conf
sudo mv serf.conf /etc/init/
wget https://gist.github.com/darron/7142708/raw/1475e10d9018ba2a52083e4b041c247fac24ae5f/serf.default
sudo mv serf.default /etc/default/serf
cd /etc/init.d; sudo ln -s /lib/init/upstart-job serf
cd /etc/logrotate.d/; sudo wget https://gist.github.com/darron/7129312/raw/9d0bef1876b9fbe0eed4fc07ed0a0c7dcc8a8c50/serf
sudo service serf start
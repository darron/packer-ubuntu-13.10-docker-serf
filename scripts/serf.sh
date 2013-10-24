#!/bin/bash
sudo apt-get -y install unzip
cd /tmp
wget https://dl.bintray.com/mitchellh/serf/0.1.1_linux_amd64.zip
unzip 0.1*
sudo mv serf /usr/local/bin
wget https://gist.github.com/darron/7126986/raw/8830fbfe160d3b17cf431ee9931afb4d1f0122ad/serf.conf
sudo mv serf.conf /etc/init/
cd /etc/init.d; sudo ln -s /lib/init/upstart-job serf
cd /etc/logrotate.d/; sudo wget https://gist.github.com/darron/7129312/raw/9d0bef1876b9fbe0eed4fc07ed0a0c7dcc8a8c50/serf
sudo service serf start
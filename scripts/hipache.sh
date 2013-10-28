#!/bin/bash
sudo apt-get -y install nodejs npm redis-server
sudo npm install hipache -g
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo mkdir /etc/hipache
cd /etc/hipache; wget https://raw.github.com/darron/packer-ubuntu-13.10-docker-serf/master/config/hipache.json
cd /etc/init/; wget https://raw.github.com/darron/packer-ubuntu-13.10-docker-serf/master/config/hipache.conf
cd /etc/logrotate.d/; sudo wget https://raw.github.com/darron/packer-ubuntu-13.10-docker-serf/master/config/hipache.logrotate; sudo mv hipache.logrotate hipache
cd /etc/init.d; sudo ln -s /lib/init/upstart-job hipache
sudo hipache start
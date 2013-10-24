packer-ubuntu-13.10-docker-serf
===========================

A simple [Packer](http://www.packer.io/) template to build:

  1. An AMI using Ubuntu 13.10 in AWS USW-2 (Oregon) region.
  2. A Virtualbox Vagrant box.

Includes:

  1. [Docker](http://www.docker.io/)
  2. [Serf](http://www.serfdom.io/).

Configurable Event Handlers
---------------------------

Inside [/etc/default/serf](https://github.com/darron/packer-ubuntu-13.10-docker-serf/blob/master/config/serf.default) you can configure an EVENTS_DIR that contains all of your handlers.

You can also configure an alternate SUFFIX if you prefer to write your handlers in a language other than Bash/sh.

If that EVENTS_DIR exists the [serf.conf](https://github.com/darron/packer-ubuntu-13.10-docker-serf/blob/master/config/serf.conf) Upstart script will look for files ending in SUFFIX and add them as event handlers.

TODO
-----------

Use [cloud-init](https://help.ubuntu.com/community/CloudInit) to join cluster on startup.
Use cloud-init to grab event handlers on boot.
packer-ubuntu-13.10-docker-serf
===========================

A simple [Packer](http://www.packer.io/) template to build:

  1. An AMI using Ubuntu 13.10 in AWS USW-2 (Oregon) region.
  2. A Virtualbox Vagrant box.

Includes:

  1. [Docker](http://www.docker.io/)
  2. [Serf](http://www.serfdom.io/)
  3. [Hipache](https://github.com/dotcloud/hipache) - to route traffic to the proper docker container.


To Build the VM's
--------

`vagrant up`

`packer build template.json`

Configure Serf Roles and adding Handlers
--------------------------

Using [User data](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html) we can setup the Serf role:

```
ec2-run-instances --key your-key -g security-group --user-data-file user-data-file/master your-ami --region us-west-2
ec2-run-instances --key your-key -g security-group --user-data-file user-data-file/route your-ami --region us-west-2
ec2-run-instances --key your-key -g security-group --user-data-file user-data-file/build your-ami --region us-west-2
ec2-run-instances --key your-key -g security-group --user-data-file user-data-file/serve your-ami --region us-west-2
```

This repo pulls example handlers from [darron/serf-docker-events](https://github.com/darron/serf-docker-events) - it could be any handlers at all.

Configurable Event Handlers
---------------------------

Inside [/etc/default/serf](https://github.com/darron/packer-ubuntu-13.10-docker-serf/blob/master/config/serf.default) you can configure an EVENTS_DIR that contains all of your handlers.

You can also configure an alternate SUFFIX if you prefer to write your handlers in a language other than Bash/sh.

If that EVENTS_DIR exists the [serf.conf](https://github.com/darron/packer-ubuntu-13.10-docker-serf/blob/master/config/serf.conf) Upstart script will look for files ending in SUFFIX and add them as event handlers.

TODO
-----------

Better error checking, etc.
# -*- mode: ruby -*-
# vi: set ft=ruby :
 
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :serf do |config|
    config.vm.box = "saucy64"
    config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"
 
    config.vm.provision "shell", path: "scripts/setup.sh"
    config.vm.provision "shell", path: "scripts/docker.sh"
    config.vm.provision "shell", path: "scripts/serf.sh"
  end
end
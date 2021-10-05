# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_url = "Vagrantfile"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
  	vb.memory = "2048"
  end

  config.vm.synced_folder "saltstack/salt", "/srv/salt"
  config.vm.synced_folder "saltstack/pillar", "/srv/pillar/"

  config.vm.provision :shell, :inline => "sudo apt-get update && sudo apt-get -y install libgit2-dev python3-pygit2"

  config.vm.provision :salt do |salt|
  	salt.masterless = true
  	salt.run_highstate = true
  	salt.minion_config = "saltstack/minion-config"
    salt.verbose = true
    salt.bootstrap_options = "-F -P -c /tmp"
  end
end

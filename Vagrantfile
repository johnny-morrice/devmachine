# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/focal64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "172.16.1.5"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 22, host: 8022

  config.vm.provider "virtualbox" do |vb|
    vb.name = "dev-machine"
    vb.memory = HOME_ENV["VM_MEMORY"]
    vb.cpus = HOME_ENV["VM_CPUS"]
    vb.linked_clone = true
    vb.default_nic_type = "virtio"
  end

  config.vm.synced_folder "../../", "/srv/windows/dev"
  config.vm.provision "file", source: "ubuntu.gpg", destination: "~/ubuntu.gpg"
  config.vm.provision "shell", path: "setup_vagrant_root.sh"
  config.vm.provision "shell", path: "setup_vagrant_home.sh", privileged: false, env: HOME_ENV
  config.vm.provision "shell", path: "setup_vagrant_docker.sh"
end

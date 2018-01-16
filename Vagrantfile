# -*- mode: ruby -*-
# vi: set ft=ruby :

$vmname = "vmdev-init"

Vagrant.configure("2") do |config|
    # Every vagrant virtual env requires a box to build off of 
    
    config.vm.box = "puppetlabs/ubuntu-16.04-64-puppet"
    config.vm.box_version = "1.0.0"
    config.vm.hostname = $vmname
    config.vm.define $vmname #name the running machine
    
    config.vm.network :private_network, ip: "192.168.33.10"
    config.vm.network :forwarded_port, guest: 80, host: 8080
    
    config.vm.provider "virtualbox" do |v|
      v.name = $vmname
      v.memory = 256
      v.cpus = 1
    end

    # Enable shell provisioning to bootstrap puppet
    config.vm.provision :shell, :path => "bootstrap.sh"
end
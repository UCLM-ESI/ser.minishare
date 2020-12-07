# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "kali" do | node|
    node.vm.box = "kalilinux/rolling"
    node.vm.hostname = "kali"
    node.vm.network "private_network", type: "dhcp", virtualbox__intnet: "intnet"

    node.vm.provider "virtualbox" do |v|
      v.name = "kali"
      # v.gui = false
    end

    node.vm.provision "ansible" do |a|
      a.playbook = "playbook.yml"
    end
  end

  config.vm.define "WXP" do |node|
    node.vm.box = "add id to .vagrant/WXP/virtualbox/id"
    node.vm.guest = :windows
    node.vm.network "private_network", type: "dhcp", virtualbox__intnet: "intnet"
    node.vm.synced_folder ".", "/vagrant", automount: true
    node.vm.boot_timeout = 30

    node.vm.provider "virtualbox" do |v|
      v.name = "WXP"
      v.gui = true
    end
  end
end

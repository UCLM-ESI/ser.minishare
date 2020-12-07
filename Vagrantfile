# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "wxp" do |node|
    node.vm.box = "voidead/win-xp-sp1"
    node.vm.hostname = "wxp"

    node.vm.synced_folder ".", "/srv/host"
  end

  config.vm.define "kali" do | node|
    node.vm.box = "kalilinux/rolling"
    node.vm.hostname = "kali"

    node.vm.provider "virtualbox" do |v|
      v.name = "kali"
    end

    node.vm.provision "ansible" do |a|
      a.playbook = "playbook.yml"
    end
  end
end

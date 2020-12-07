#!/bin/bash --

OVA=WXP-minishare-vagrant.ova

if [ ! -f $OVA ]; then
  echo "ERROR: missing file: $OVA"
  exit 1
fi

VBoxManage import $OVA

VBoxManage dhcpserver remove --netname intnet
VBoxManage dhcpserver add --netname intnet --ip 192.168.0.1 --netmask 255.255.255.0 --lowerip 192.168.0.100 --upperip 192.168.0.254 --enable

mkdir -p .vagrant/machines/WXP/virtualbox
VBoxManage list vms | awk '/^"WXP/ {printf "%s", $2}' | tr -d '{}' > .vagrant/machines/WXP/virtualbox/id

echo "[ok]"

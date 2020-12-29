Playing with the CVE-2004-2271
==============================


Setup for GNU/Linux hosts (recommended)
---------------------------------------

- Clone
- Download `WXP-minishare-vagrant.ova` and save in this directory.
- Run `setup.sh`
- Run `vagrant up`


Setup for other OS hosts
------------------------

- Clone
- Download "WXP-minishare-vagrant.ova" and save in this directory.
- Open "virtualbox"
- Import appliance
  - Choose the `.ova` file
- Configure DHCP server for internal network "intnet" if required
- Obtain VM id with `VBoxManage list vms`
- Write vm id in file `/id` in vagrant vm config file for this project
- Run `vagrant up`

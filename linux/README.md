## Setup

`localhost:31337`, `192.168.100.121:22` Ubuntu 24.04

`vagrant/vagrant` default ID/PW

### VMWare

<a href="https://developer.hashicorp.com/vagrant/docs/providers/vmware/installation">vagrant docs</a>

Install <a href="https://developer.hashicorp.com/vagrant/downloads/vmware">Vagrant VMware Utility</a>

```console
$ vagrant plugin install vagrant-vmware-desktop
$ vagrant up --provider vmware_desktop
```

### Virtualbox

```console
$ vagrant up --provider virtualbox
```

## Usage

```console
$ ssh vagrant@localhost -p31337
$ ssh vagrant@192.168.100.121 (Only Virtualbox)
$ vagrant@localhost's password: vagrant
$ vagrant destroy (Deleting the VM)
```

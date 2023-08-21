## vagrant-pwn

### VMware

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

### Usage

```console
$ vagrant ssh or ssh vagrant@localhost -p31337
```

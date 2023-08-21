# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "vm" do |cfg|
    cfg.vm.box = "generic/ubuntu2204"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "vm"
      vb.cpus = 2
      vb.memory = 4096
    end
    #cfg.vm.host_name = "pwn"
    cfg.vm.network "forwarded_port", guest:22, host: 31337, auto_correct: true, id: "ssh"
    cfg.vm.synced_folder ".", "/vagrant", disabled: false
    cfg.vm.provision "shell", path: "config.sh"
    cfg.vm.provision "shell", path: "install_pkg.sh", privileged: false
  end
end

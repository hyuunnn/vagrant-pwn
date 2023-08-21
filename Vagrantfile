# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "vm" do |cfg|
    cfg.vm.box = "generic/ubuntu2204"
    #cfg.vm.host_name = "pwn"
    
    cfg.vm.provider "vmware_desktop" do |v|
      v.vmx["displayname"] = "vm"
      v.cpus = 2
      v.memory = 4096
      #v.gui = true
    end
  
    cfg.vm.provider "virtualbox" do |v|
      v.name = "vm"
      v.cpus = 2
      v.memory = 4096
      #v.gui = true
    end
    
    cfg.vm.network "forwarded_port", guest:22, host: 31337, auto_correct: true, id: "ssh"
    cfg.vm.synced_folder ".", "/vagrant", disabled: false
    cfg.vm.provision "shell", path: "config.sh"
    cfg.vm.provision "shell", path: "install_pkg.sh", privileged: false
  end
end

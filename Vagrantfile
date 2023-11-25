# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/focal64"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  config.vm.provision :shell, privileged: true,  path: "scripts/install-os-packages.sh"
  config.vm.provision :shell, privileged: true,  path: "scripts/install-kas-build-tool.sh"

  # Folder sync
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./conf", "/vagrant/conf"
  config.vm.synced_folder "./scripts", "/vagrant/scripts"
  config.vm.synced_folder "./build/conf", "/vagrant/build/conf"
  config.vm.provision "shell", inline: <<-SHELL
    # Fix file permissions on folders above those being synced
    sudo chown vagrant:vagrant /vagrant
    sudo chown vagrant:vagrant /vagrant/build
  SHELL
end

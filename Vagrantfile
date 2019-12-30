# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
#
Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"

  config.vm.synced_folder "../../../Desktop", "/home/vagrant/Desktop"

  config.vm.network "private_network", ip: "192.168.56.4"

  config.vm.provider "virtualbox" do |vb|
    # Change the name of the VM
    vb.name = "Debian Workstation"

    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "4096"

    # Enable Universal Serial Bus 
    vb.customize ['modifyvm', :id, '--usb', 'on']

  end

  config.vm.provision "shell", path: "setup.sh"

end

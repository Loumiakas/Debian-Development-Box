# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
#
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

#  config.vbguest.auto_update = false

  config.vm.synced_folder ".", "/vagrant"

  config.vm.network "private_network", ip: "192.168.56.4"

  config.vm.provider "virtualbox" do |vb|
    # Change the name of the VM
    vb.name = "Debian Workstation"

    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
    vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  config.vm.provision "shell", path: "setup.sh"

end

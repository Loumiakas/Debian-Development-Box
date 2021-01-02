# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
#
Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.ssh.insert_key = false

#  config.vbguest.auto_update = false

  config.vm.synced_folder ".", "/vagrant"

  config.vm.network "private_network", ip: "192.168.56.4"

  config.vm.provider "virtualbox" do |vb|
    # Change the name of the VM
    vb.name = "Debian Workstation"

    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "4096"

    # Enable USB
    vb.customize ["modifyvm", :id, "--usb", "on"]
    vb.customize ["modifyvm", :id, "--usbehci", "on"]
    # YARDStick One
    vb.customize ["usbfilter", "add", "0",
        "--target", :id,
        "--name", "YARDStick One",
        "--product", "YARD Stick One"]
    # HackRF One
    vb.customize ["usbfilter", "add", "1",
        "--target", :id,
        "--name", "HackRF One",
        "--product", "HackRF One"]
    # Ubertooth One
    vb.customize ["usbfilter", "add", "2",
        "--target", :id,
        "--name", "Ubertooth One",
        "--product", "Ubertooth One"]
    # JLink Segger
    vb.customize ["usbfilter", "add", "3",
        "--target", :id,
        "--name", "JLink Bluetooth Devboard",
        "--product", "J-Link",
        "--manufacturer", "SEGGER"]
  end

  config.vm.provision "shell", path: "setup.sh"

end

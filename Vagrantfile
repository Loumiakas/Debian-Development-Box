# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
#
Vagrant.configure("2") do |config|
  config.vm.box = "boxomatic/debian-11"
  config.ssh.insert_key = false

  config.vbguest.auto_update = false

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
    #
    # CAPTURE DEVICES
    #
    # YARDStick One
    vb.customize ["usbfilter", "add", "0",
        "--target", :id,
        "--name", "YARDStick One",
        "--vendorid", "0x1d50",
        "--productid", "0x605b",
        "--product", "YARD Stick One",
        "--manufacturer", "Great Scott Gadgets"]
    # HackRF One
    vb.customize ["usbfilter", "add", "1",
        "--target", :id,
        "--name", "HackRF One",
        "--vendorid", "0x1d50",
        "--productid", "0x6089",
        "--product", "HackRF One",
        "--manufacturer", "Great Scott Gadgets"]
    # Ubertooth One
    vb.customize ["usbfilter", "add", "2",
        "--target", :id,
        "--name", "Ubertooth One",
        "--vendorid", "0x1d50",
        "--productid", "0x6002",
        "--product", "Ubertooth One",
        "--manufacturer", "Great Scott Gadgets"]
    # JLink Segger
    vb.customize ["usbfilter", "add", "3",
        "--target", :id,
        "--name", "JLink Bluetooth Devboard",
        "--vendorid", "0x1366",
        "--productid", "0x1015",
        "--product", "J-Link",
        "--manufacturer", "SEGGER"]
    # Arduino Uno
    vb.customize ["usbfilter", "add", "5",
        "--target", :id,
        "--name", "Arduino Uno",
        "--vendorid", "0x2341",
        "--productid", "0x0043",
        "--product", "IOUSBHostDevice",
        "--manufacturer", "Arduino (www.arduino.cc)"]
    # Arduino  Uno / ESP8266 (Chinese)
    vb.customize ["usbfilter", "add", "6",
        "--target", :id,
        "--name", "Chinese Device",
        "--vendorid", "0x1a86",
        "--productid", "0x7523"]
    # Arduino Mega
    vb.customize ["usbfilter", "add", "7",
        "--target", :id,
        "--name", "Arduino Mega",
        "--vendorid", "0x2341",
        "--productid", "0x0042",
        "--product", "IOUSBHostDevice",
        "--manufacturer", "Arduino (www.arduino.cc)"]
    # ST Link Nucleo
    vb.customize ["usbfilter", "add", "8",
        "--target", :id,
        "--name", "ST Link Nucleo",
        "--vendorid", "0x0483",
        "--productid", "0x374b",
        "--product", "STM32 STLink",
        "--manufacturer", "STMicroelectronics"]
    # Teensy
    vb.customize ["usbfilter", "add", "9",
        "--target", :id,
        "--name", "Teensy",
        "--vendorid", "0x16c0",
        "--productid", "0x0486",
        "--product", "Teensyduino RawHID",
        "--manufacturer", "Teensyduino"]
    # USB Bluetooth dongle
    vb.customize ["usbfilter", "add", "10",
        "--target", :id,
        "--name", "Bluetooth Dongle",
        "--vendorid", "0x0a12",
        "--productid", "0x0001",
        "--manufacturer", "Cambridge Silicon Radio, Ltd"]
  end

  config.vm.provision "shell", path: "setup.sh"

end

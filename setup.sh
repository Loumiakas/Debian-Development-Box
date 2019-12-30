#!/bin/bash

apt install python-pip -y
pip install ansible pyusb ipython future tmuxp
ansible-playbook /home/vagrant/Desktop/Debian/setup.yml --limit localhost --become

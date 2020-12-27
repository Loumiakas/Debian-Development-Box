#!/bin/bash
apt update && apt upgrade
apt install python3-pip -y
pip3 install ansible pyusb ipython future
ansible-playbook /vagrant/setup.yml --limit localhost --become
pip install tmuxp

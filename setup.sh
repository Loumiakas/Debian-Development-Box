#!/bin/bash

apt install python-pip -y
pip install ansible pyusb ipython future tmuxp
ansible-playbook /vagrant/setup.yml --limit localhost --become

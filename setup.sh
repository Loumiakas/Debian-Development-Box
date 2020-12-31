#!/bin/bash
apt update && apt upgrade
apt install python3-pip -y
pip3 install ansible tmuxp click==7.1.2
ansible-playbook /vagrant/setup.yml --limit localhost --become

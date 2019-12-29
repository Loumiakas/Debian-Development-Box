#!/bin/bash

wget -O /tmp/tmux.tar.gz https://github.com/tmux/tmux/releases/download/3.0a/tmux-3.0a.tar.gz
mkdir /tmp/tmux
tar xvf /tmp/tmux.tar.gz -C /tmp/tmux

cd /tmp/tmux/tmux-3.0a
./configure
make
make install
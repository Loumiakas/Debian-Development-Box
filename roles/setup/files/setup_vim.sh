#!/bin/bash
cd /tmp/vim
make clean
./configure \
    --enable-perlinterp=dynamic \
    --enable-pythoninterp=dynamic \
    --enable-rubyinterp=dynamic \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=huge \
    --with-x \
    --with-compiledby="Loumiakas <loumiakas1@gmail.com>" \
    --with-python-config-dir=/usr/lib/python2.7/config-$(uname -m)-linux-gnu
make -j8
make install

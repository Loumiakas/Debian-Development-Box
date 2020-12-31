#!/bin/bash
cd /tmp/vim
make clean
./configure \
    --enable-perlinterp=dynamic \
    --enable-python3interp=dynamic \
    --enable-rubyinterp=dynamic \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=huge \
    --with-x \
    --with-compiledby="Loumiakas <loumiakas1@gmail.com>" \
    --with-python3-config-dir=$(python3-config --configdir)
make -j8
make install

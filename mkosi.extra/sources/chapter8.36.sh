#!/bin/bash
set -e
cd /sources
tar -xf bash-5.3-rc2.tar.gz
cd bash-5.3-rc2

./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            --docdir=/usr/share/doc/bash-5.3-rc2

make
make install

cd /sources
rm -rf bash-5.3-rc2

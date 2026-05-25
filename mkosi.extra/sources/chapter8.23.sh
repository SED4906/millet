#!/bin/bash
set -e
cd /sources
tar -xf mpc-1.4.1.tar.xz
cd mpc-1.4.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.4.1

make
make html

make check

make install
make install-html

cd /sources
rm -rf mpc-1.4.1

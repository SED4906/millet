#!/bin/bash
set -e
cd /sources
tar -xf xz-5.8.1.tar.xz
cd xz-5.8.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.8.1

make
make install

cd /sources
rm -rf xz-5.8.1

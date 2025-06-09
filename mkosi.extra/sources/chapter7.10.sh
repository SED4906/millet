#!/bin/bash
set -e
cd /sources
tar -xf Python-3.13.4.tar.xz
cd Python-3.13.4

./configure --prefix=/usr       \
            --enable-shared     \
            --without-ensurepip \
            --without-static-libpython

make
make install

cd /sources
rm -rf Python-3.13.4

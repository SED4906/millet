#!/bin/bash
set -e
cd /sources
tar -xf automake-1.18.tar.xz
cd automake-1.18

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.18

make
make install

cd /sources
rm -rf automake-1.18

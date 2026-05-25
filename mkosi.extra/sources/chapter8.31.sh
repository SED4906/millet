#!/bin/bash
set -e
cd /sources
tar -xf sed-4.10.tar.xz
cd sed-4.10

./configure --prefix=/usr

make
make html
make install
install -d -m755           /usr/share/doc/sed-4.10
install -m644 doc/sed.html /usr/share/doc/sed-4.10

cd /sources
rm -rf sed-4.10

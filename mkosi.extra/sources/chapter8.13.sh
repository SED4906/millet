#!/bin/bash
set -e
cd /sources
tar -xf m4-1.4.21.tar.xz
cd m4-1.4.21

./configure --prefix=/usr

make
make install

cd /sources
rm -rf m4-1.4.21

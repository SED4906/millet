#!/bin/bash
set -e
cd /sources
tar -xf zlib-1.3.2.tar.gz
cd zlib-1.3.2

./configure --prefix=/usr

make
make install

rm -fv /usr/lib/libz.a

cd /sources
rm -rf zlib-1.3.2

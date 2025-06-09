#!/bin/bash
set -e
cd /sources
tar -xf libxcrypt-4.4.38.tar.xz
cd libxcrypt-4.4.38

./configure --prefix=/usr                \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=no     \
            --disable-static             \
            --disable-failure-tokens

make
make install

cd /sources
rm -rf libxcrypt-4.4.38

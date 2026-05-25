#!/bin/bash
set -e
cd /sources
tar -xf libxcrypt-4.5.2.tar.xz
cd libxcrypt-4.5.2

sed -i '/strchr/s/const//' lib/crypt-{sm3,gost}-yescrypt.c

./configure --prefix=/usr                \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=no     \
            --disable-static             \
            --disable-failure-tokens

make
make install

cd /sources
rm -rf libxcrypt-4.5.2

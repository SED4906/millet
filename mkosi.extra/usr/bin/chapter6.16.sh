#!/bin/bash
set -e
. ~/.bashrc
cd $LFS/sources
tar -xf xz-5.8.3.tar.xz
cd xz-5.8.3

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.8.3

make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/liblzma.la

cd $LFS/sources
rm -rf $LFS/sources/xz-5.8.3

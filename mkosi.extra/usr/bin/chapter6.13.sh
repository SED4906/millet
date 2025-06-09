#!/bin/bash
set -e
. ~/.bashrc
cd $LFS/sources
tar -xf patch-2.8.tar.xz
cd patch-2.8

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install

cd $LFS/sources
rm -rf $LFS/sources/patch-2.8

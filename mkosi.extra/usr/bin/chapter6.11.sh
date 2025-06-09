#!/bin/bash
set -e
. ~/.bashrc
cd $LFS/sources
tar -xf gzip-1.14.tar.xz
cd gzip-1.14

./configure --prefix=/usr --host=$LFS_TGT

make
make DESTDIR=$LFS install

cd $LFS/sources
rm -rf $LFS/sources/gzip-1.14

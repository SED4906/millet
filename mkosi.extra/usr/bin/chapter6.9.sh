#!/bin/bash
set -e
. ~/.bashrc
cd $LFS/sources
tar -xf gawk-5.3.2.tar.xz
cd gawk-5.3.2

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install

cd $LFS/sources
rm -rf $LFS/sources/gawk-5.3.2

#!/bin/bash
set -e
. ~/.bashrc
cd $LFS/sources
tar -xf grep-3.12.tar.xz
cd grep-3.12

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)

make
make DESTDIR=$LFS install

cd $LFS/sources
rm -rf $LFS/sources/grep-3.12

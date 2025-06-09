#!/bin/bash
set -e
. ~/.bashrc
cd $LFS/sources
tar -xf sed-4.9.tar.xz
cd sed-4.9

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)

make
make DESTDIR=$LFS install

cd $LFS/sources
rm -rf $LFS/sources/sed-4.9

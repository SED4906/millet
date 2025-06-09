#!/bin/bash
set -e
. ~/.bashrc
cd $LFS/sources
tar -xf linux-6.14.6.tar.xz
cd linux-6.14.6

make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr

cd $LFS/sources
rm -rf linux-6.14.6

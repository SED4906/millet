#!/bin/bash
set -e
. ~/.bashrc
cd $LFS/sources
tar -xf linux-7.0.12.tar.xz
cd linux-7.0.12

make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr

cd $LFS/sources
rm -rf linux-7.0.12

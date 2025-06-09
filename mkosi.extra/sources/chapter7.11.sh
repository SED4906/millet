#!/bin/bash
set -e
cd /sources
tar -xf texinfo-7.2.tar.xz
cd texinfo-7.2

./configure --prefix=/usr

make
make install

cd /sources
rm -rf texinfo-7.2

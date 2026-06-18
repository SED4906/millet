#!/bin/bash
set -e
cd /sources
tar -xf file-5.48.tar.gz
cd file-5.48

./configure --prefix=/usr
make
make install

cd /sources
rm -rf file-5.48

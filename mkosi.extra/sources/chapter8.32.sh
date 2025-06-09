#!/bin/bash
set -e
cd /sources
tar -xf psmisc-23.7.tar.xz
cd psmisc-23.7

./configure --prefix=/usr

make
make install

cd /sources
rm -rf psmisc-23.7

#!/bin/bash
set -e
cd /sources
tar -xf less-704.tar.gz
cd less-704

./configure --prefix=/usr --sysconfdir=/etc

make
make install

cd /sources
rm -rf less-704

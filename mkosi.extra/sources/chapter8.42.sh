#!/bin/bash
set -e
cd /sources
tar -xf less-678.tar.gz
cd less-678

./configure --prefix=/usr --sysconfdir=/etc

make
make install

cd /sources
rm -rf less-678

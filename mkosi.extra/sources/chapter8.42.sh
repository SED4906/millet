#!/bin/bash
set -e
cd /sources
tar -xf less-692.tar.gz
cd less-692

./configure --prefix=/usr --sysconfdir=/etc

make
make install

cd /sources
rm -rf less-692

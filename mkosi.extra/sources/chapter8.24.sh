#!/bin/bash
set -e
cd /sources
tar -xf attr-2.5.2.tar.gz
cd attr-2.5.2

./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.2

make
make install

cd /sources
rm -rf attr-2.5.2

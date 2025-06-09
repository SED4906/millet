#!/bin/bash
set -e
cd /sources
tar -xf gdbm-1.25.tar.gz
cd gdbm-1.25

./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make
make install

cd /sources
rm -rf gdbm-1.25

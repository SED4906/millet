#!/bin/bash
set -e
cd /sources
tar -xf groff-1.24.1.tar.gz
cd groff-1.24.1

PAGE=letter ./configure --prefix=/usr

make -j1
make install

cd /sources
rm -rf groff-1.24.1

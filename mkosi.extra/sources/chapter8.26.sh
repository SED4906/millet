#!/bin/bash
set -e
cd /sources
tar -xf libcap-2.78.tar.xz
cd libcap-2.78

sed -i '/install -m.*STA/d' libcap/Makefile

make prefix=/usr lib=lib
make prefix=/usr lib=lib install

cd /sources
rm -rf libcap-2.78

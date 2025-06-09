#!/bin/bash
set -e
cd /sources
tar -xf openssl-3.5.0.tar.gz
cd openssl-3.5.0

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

make
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.5.0
cp -vfr doc/* /usr/share/doc/openssl-3.5.0

cd /sources
rm -rf openssl-3.5.0

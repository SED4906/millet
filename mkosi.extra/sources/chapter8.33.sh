#!/bin/bash
set -e
cd /sources
tar -xf gettext-0.25.tar.xz
cd gettext-0.25

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.25

make
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so

cd /sources
rm -rf gettext-0.25

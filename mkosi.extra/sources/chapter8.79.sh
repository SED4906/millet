#!/bin/bash
set -e
cd /sources
tar -xf procps-ng-4.0.5.tar.xz
cd procps-ng-4.0.5

./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/procps-ng-4.0.5 \
            --disable-static                        \
            --disable-kill                          \
            --enable-watch8bit                      \
            --with-systemd

make
make install

cd /sources
rm -rf procps-ng-4.0.5

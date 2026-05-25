#!/bin/bash
set -e
cd /sources
tar -xf gettext-1.0.tar.xz
cd gettext-1.0

./configure --disable-shared

make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin

cd /sources
rm -rf gettext-1.0

#!/bin/bash
set -e
cd /sources
tar -xf gettext-0.26.tar.xz
cd gettext-0.26

./configure --disable-shared

make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin

cd /sources
rm -rf gettext-0.26

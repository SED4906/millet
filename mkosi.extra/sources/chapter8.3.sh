#!/bin/bash
set -e
cd /sources
tar -xf man-pages-6.14.tar.xz
cd man-pages-6.14

rm -v man3/crypt*
make -R GIT=false prefix=/usr install

cd /sources
rm -rf man-pages-6.14

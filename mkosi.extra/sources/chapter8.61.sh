#!/bin/bash
set -e
cd /sources
tar -xf gawk-5.3.2.tar.xz
cd gawk-5.3.2

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr

make
rm -f /usr/bin/gawk-5.3.2
make install

ln -sv gawk.1 /usr/share/man/man1/awk.1
install -vDm644 doc/{awkforai.txt,*.{eps,pdf,jpg}} -t /usr/share/doc/gawk-5.3.2

cd /sources
rm -rf gawk-5.3.2

#!/bin/bash
set -e
cd /sources
tar -xf Python-3.14.6.tar.xz
cd Python-3.14.6

patch -Np1 -i ../Python-3.14.6-openssl_4-1.patch

./configure --prefix=/usr          \
            --enable-shared        \
            --with-system-expat    \
            --enable-optimizations \
            --without-static-libpython

make
make install

cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF

install -v -dm755 /usr/share/doc/python-3.14.6/html

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.14.6/html \
    -xvf ../python-3.14.6-docs-html.tar.bz2

cd /sources
rm -rf Python-3.14.6

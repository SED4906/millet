#!/bin/bash
set -e
cd /sources
tar -xf sqlite-autoconf-3530200.tar.gz
cd sqlite-autoconf-3530200

tar -xf ../sqlite-doc-3530200.tar.xz

./configure --prefix=/usr     \
            --disable-static  \
            --enable-fts{4,5} \
            CPPFLAGS="-D SQLITE_ENABLE_COLUMN_METADATA=1 \
                      -D SQLITE_ENABLE_UNLOCK_NOTIFY=1   \
                      -D SQLITE_ENABLE_DBSTAT_VTAB=1     \
                      -D SQLITE_SECURE_DELETE=1"

make LDFLAGS.rpath=""
make install

install -v -m755 -d /usr/share/doc/sqlite-3.53.2
cp -v -R sqlite-doc-3530200/* /usr/share/doc/sqlite-3.53.2

cd /sources
rm -rf sqlite-autoconf-3530200

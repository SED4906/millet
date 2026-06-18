#!/bin/bash
set -e
cd /sources
tar -xf iana-etc-20260529.tar.gz
cd iana-etc-20260529

cp services protocols /etc

cd /sources
rm -rf iana-etc-20260529

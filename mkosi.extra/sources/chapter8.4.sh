#!/bin/bash
set -e
cd /sources
tar -xf iana-etc-20250519.tar.gz
cd iana-etc-20250519

cp services protocols /etc

cd /sources
rm -rf iana-etc-20250519

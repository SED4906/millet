#!/bin/bash
set -e
cd /sources
tar -xf iana-etc-20260504.tar.gz
cd iana-etc-20260504

cp services protocols /etc

cd /sources
rm -rf iana-etc-20260504

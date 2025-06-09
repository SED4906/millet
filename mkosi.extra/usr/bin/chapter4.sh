#!/bin/bash
set -e
echo "Chapter 4"
mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib}

for i in bin lib; do
  ln -sv usr/$i $LFS/$i
done

ln -sv usr/bin $LFS/sbin
ln -sv bin $LFS/usr/sbin

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac

mkdir -pv $LFS/tools

groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs

chown -v lfs $LFS/{usr{,/*},var,etc,tools}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac

echo "4.4"
su - lfs -w LFS -c chapter4.4.sh

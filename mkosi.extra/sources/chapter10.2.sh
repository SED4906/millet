#!/bin/bash
set -e
ROOTFS=$(cat /sources/alfs_rootdev)
BOOTFS=$(cat /sources/alfs_bootdev)
cat > /etc/fstab << EOF
# Begin /etc/fstab

# file system  mount  type  options                                       dump  fsck
#              point                                                            order

${ROOTFS}      /      ext4  defaults                                      1     1
${BOOTFS}      /boot  vfat  rw,relatime,codepage=437,iocharset=iso8859-1  0     2

# End /etc/fstab
EOF

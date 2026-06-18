#!/bin/bash
set -e
ROOTFS=$(cat /sources/alfs_rootdev)
BOOTFS=$(cat /sources/alfs_bootdev)
mount -v -t vfat "${BOOTFS}" /boot
echo "CONFIG_CMDLINE=\"rw root=${ROOTFS} rootwait\"" > /sources/alfs_config_fragment

cd /sources
tar -xf linux-7.0.12.tar.xz
cd linux-7.0.12

make mrproper

make defconfig
scripts/kconfig/merge_config.sh -m .config /sources/kernel_config_fragment /sources/alfs_config_fragment
make

make modules_install
mkdir -pv /boot/EFI/Boot
cp -v arch/x86/boot/bzImage /boot/EFI/Boot/BOOTX64.EFI

cp -r Documentation -T /usr/share/doc/linux-7.0.12

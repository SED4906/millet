# Millet[^1]
an Automated Linux From Scratch installer

This only supports UEFI systems.

On a good system[^2], the build process takes about an hour. Your mileage may vary.

Run the following command to download all the source code and build install media:
```bash
wget --input-file=sources/wget-list-systemd --continue --directory-prefix=sources && mkosi
```
This is most likely to work on Arch Linux, because the install media is built from Arch packages.

The installer is on Virtual Terminal 7, other VTs can be logged into as root (name=password).

[^1]: ALFS (Automated Linux From Scratch) -> alfalfa (reduplication) -> millet (grain often fed to non-humans)
[^2]: Host CPU is an AMD Ryzen 7 7800X3D, tested within `qemu-system-x86_64 -hda ../millet.qcow2 -hdb millet.raw -bios ../VMs/RELEASEX64_OVMF.fd -cpu host -m 16384 -enable-kvm -vga virtio -smp 16`

#!/usr/bin/python3
import subprocess

def bail():
    print("Bailing out.")
    input("Press Enter to exit... ")
    exit(1)

def pause():
    input("Press Enter to continue... ")

def run_command(command, bail_msg="Something went wrong."):
    if subprocess.run(command, shell=True, umask=0o022, env={"PATH": "/usr/bin:/usr/sbin","LFS": "/mnt/lfs"}).returncode != 0:
        print(bail_msg)
        bail()

def version_check():
    print("Running version check...")
    run_command("version-check.sh", "Your build enironment is bad.")

def chapter2():
    subprocess.run("lsblk -o NAME,SIZE,TYPE", shell=True)
    print("Please create (and format) root and boot partitions.")
    print("Starting a shell so you can do this manually...")
    subprocess.run("bash", shell=True)
    rootfs_node = input("What partition will contain the root filesystem? ")
    run_command(f"mkdir -pv $LFS && mount -v -t ext4 {rootfs_node} $LFS && chown root:root $LFS && chmod 755 $LFS")

def chapter3():
    print("Copying sources...")
    run_command("chapter3.sh")
    subprocess.run("find /usr/share/zoneinfo -mindepth 2 -maxdepth 2 -type f -printf '%P\\n' | grep -ve 'right\\/' -e 'posix\\/' | tr '\\n' '\\t'", shell=True)
    lfs_timezone = input("What is your timezone? ")
    print(lfs_timezone, file=open('/mnt/lfs/sources/alfs_timezone','w'))
    lfs_hostname = input("What hostname should the system use on the network? ")
    print(lfs_hostname, file=open('/mnt/lfs/sources/alfs_hostname','w'))


def do_install():
    print("Pre-build setup...")
    run_command("chapter4.sh")
    print("Cross Toolchain...")
    run_command("chapter5.sh")
    print("Temporary Toolchain...")
    run_command("chapter6.sh")
    print("Temporary Toolchain (chroot)...")
    run_command("chapter7.sh")
    print("Final System (chroot)...")
    run_command("chapter8.sh")
    print("System Configuration...")
    run_command("chapter9.sh")
    print("Kernel Configuration...")
    print("(Do it yourself.)")
    run_command("chapter10.sh")

def main():
    print("Welcome to Millet, an Automated Linux From Scratch installer.")
    print("This installer is based on LFS version r12.3-101-systemd. (Published 2025-08-08)")
    pause()
    version_check()
    pause()
    chapter2()
    pause()
    chapter3()
    pause()
    do_install()
    pause()
    print("All done!")
    pause()
    run_command("systemctl reboot")


if __name__ == "__main__":
    main()

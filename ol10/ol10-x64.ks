text
skipx
lang en_US.UTF-8
keyboard us
timezone UTC --utc
selinux --enforcing
firewall --enabled --service=ssh
services --enabled=sshd
bootloader --location=mbr --append="console=tty0 console=ttyS0,115200n8 no_timer_check net.ifnames=0 netroot=iscsi rd.iscsi.firmware=1 rd.iscsi.param=node.session.timeo.replacement_timeout=6000 libiscsi.debug_libiscsi_eh=1 nvme_core.shutdown_timeout=10"
network --bootproto=dhcp --device=em1 --onboot=yes --hostname=localhost.localdomain
# repo --name="AppStream" --baseurl=https://yum.oracle.com/repo/OracleLinux/OL10/appstream/x86_64 --cost=0
zerombr
clearpart --all --initlabel --drives=sda
# part / --fstype=xfs --size=100 --grow --asprimary
autopart --type=lvm --fstype=xfs # this results in 'virt-sysprep: error: no operating systems were found in the guest image'

# qemu-img info /path/to/image.qcow2
# virt-filesystems -a /path/to/image.qcow2 --all --long -h
# guestfish --ro -a /path/to/image.qcow2 -i
# %pre --erroronfail
# parted -s -a optimal /dev/sda -- mklabel gpt
# parted -s -a optimal /dev/sda -- mkpart biosboot 1MiB 2MiB set 1 bios_grub on
# parted -s -a optimal /dev/sda -- mkpart '"EFI System Partition"' fat32 2MiB 202MiB set 2 esp on
# parted -s -a optimal /dev/sda -- mkpart boot xfs 202MiB 1226MiB
# parted -s -a optimal /dev/sda -- mkpart root xfs 3096MiB 100%
# %end

# part biosboot --fstype=biosboot --onpart=sda1
# part /boot/efi --fstype=efi --onpart=sda2
# part /boot --fstype=xfs --onpart=sda3
# part / --fstype=xfs --onpart=sda4

rootpw --plaintext oraclelinux10
reboot

%packages --exclude-weakdeps --inst-langs=en
@Core
-i*-firmware
%end

%post --interpreter=/bin/bash --logfile /root/ks-post.log
cat > /etc/sysconfig/network << EOF
NETWORKING=yes
EOF

chmod +x /etc/rc.d/rc.local
sed -i "s/rhgb quiet//" /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
sed -i '/PasswordAuthentication/d' /etc/ssh/sshd_config
sed -i '/UseDNS/d' /etc/ssh/sshd_config
sed -i '/PermitRootLogin/d' /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "UseDNS no" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
mkdir -p /etc/dhcp/exit-hooks.d/
%end

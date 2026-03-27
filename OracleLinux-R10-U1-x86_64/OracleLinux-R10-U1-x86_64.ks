text
skipx
lang en_US.UTF-8
timezone UTC --utc
keyboard us
selinux --enforcing
firewall --enabled --service=ssh
services --enabled=sshd
bootloader --location=mbr --append="console=tty0 console=ttyS0,115200n8 no_timer_check net.ifnames=0 netroot=iscsi rd.iscsi.firmware=1 rd.iscsi.param=node.session.timeo.replacement_timeout=6000 libiscsi.debug_libiscsi_eh=1 nvme_core.shutdown_timeout=10"
network --bootproto=dhcp --device=em1 --onboot=yes --hostname=localhost.localdomain
zerombr
clearpart --all --initlabel --drives=sda
autopart --type=lvm --fstype=xfs # this results in 'virt-sysprep: error: no operating systems were found in the guest image'
rootpw --plaintext OracleLinux-R10-U1-x86_64
reboot

%packages --exclude-weakdeps --inst-langs=en
@Core
-i*-firmware
%end

%post --interpreter=/bin/bash --logfile /root/ks-post.log
# cat > /etc/sysconfig/network << EOF
# NETWORKING=yes
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

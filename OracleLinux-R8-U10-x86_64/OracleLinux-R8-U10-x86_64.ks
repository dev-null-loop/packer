text
skipx
lang en_US.UTF-8
keyboard us
timezone UTC --isUtc
network --bootproto=dhcp --device=eth0 --onboot=yes --ipv6=auto --hostname=localhost.localdomain
firewall --service=ssh
selinux --enforcing
bootloader --location=mbr --append="console=tty0 console=ttyS0,115200n8 no_timer_check net.ifnames=0 netroot=iscsi:169.254.0.2:::1:iqn.2015-02.oracle.boot:uefi rd.iscsi.param=node.session.timeo.replacement_timeout=6000 libiscsi.debug_libiscsi_eh=1 nvme_core.shutdown_timeout=10"
zerombr
clearpart --all --initlabel
part / --fstype=xfs --size=100 --grow --asprimary
rootpw pM0dularc
authselect --enableshadow --passalgo=sha512 --enablefingerprint
reboot

%packages
@Core
-i*-firmware
-aic94xx-firmware
-alsa-firmware
-alsa-tools-firmware
-biosdevname
-libertas-sd8686-firmware
-libertas-sd8787-firmware
-libertas-usb8388-firmware
%end

%post --interpreter=/bin/bash --logfile /root/ks-post.log
cat > /etc/sysconfig/network << EOF
NETWORKING=yes
EOF

yum install -y cloud-init cloud-utils-growpart
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

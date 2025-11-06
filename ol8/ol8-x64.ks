text
skipx
lang en_US.UTF-8
keyboard us
network --bootproto=dhcp --device=eth0 --onboot=yes --ipv6=auto --hostname=localhost.localdomain
firewall --service=ssh
selinux --enforcing

bootloader --append=" crashkernel=auto LANG=en_US.UTF-8 console=tty0 console=ttyS0 rd.luks=0 rd.md=0 rd.dm=0 rd.iscsi.bypass=1 netroot=iscsi:169.254.0.2:::1:iqn.2015-02.oracle.boot:uefi iscsi_param=node.session.timeo.replacement_timeout=6000 net.ifnames=1 nvme_core.shutdown_timeout=10 ipmi_si.tryacpi=0 ipmi_si.trydmi=0 ipmi_si.trydefaults=0 libiscsi.debug_libiscsi_eh=1 loglevel=4" --location=mbr
zerombr
clearpart --all --initlabel
part / --fstype=xfs --size=100 --grow --asprimary
rootpw pM0dularc
authselect --enableshadow --passalgo=sha512 --enablefingerprint
timezone --utc Etc/GMT
reboot

%packages
@Core
-i*-firmware
-aic94xx-firmware
-alsa-firmware
-alsa-tools-firmware
-biosdevname
-ivtv-firmware
-ivtv-firmware
-iwl100-firmware
-iwl1000-firmware
-iwl105-firmware
-iwl135-firmware
-iwl2000-firmware
-iwl2030-firmware
-iwl3160-firmware
-iwl3945-firmware
-iwl4965-firmware
-iwl5000-firmware
-iwl5150-firmware
-iwl6000-firmware
-iwl6000g2a-firmware
-iwl6000g2b-firmware
-iwl6050-firmware
-iwl7260-firmware
-iwl7265-firmware
-libertas-sd8686-firmware
-libertas-sd8787-firmware
-libertas-usb8388-firmware
-NetworkManager-team
-NetworkManager-tui
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

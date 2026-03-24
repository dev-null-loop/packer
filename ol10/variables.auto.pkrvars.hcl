boot_command = [
  "<up>",
  "e",
  "<down><down>",
  "<leftCtrlOn>e<leftCtrlOff>",
  "<spacebar>",
  "biosdevname=0",
  "<spacebar>",
  "net.ifnames=0",
  "<spacebar>",
  "inst.text",
  "<spacebar>",
  "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ol10-x64.ks",
  "<spacebar>",
  "<leftCtrlOn>x<leftCtrlOff>",
]
iso_url             = "/home/bd/iso/OracleLinux-R10-U1-x86_64-dvd.iso"
boot_wait           = "5s"
disk_size           = "5G"
format              = "qcow2"
headless            = false
use_default_display = true
http_port_max       = 8888
http_port_min       = 8888
iso_checksum        = "none"
output_directory    = "ol10-x64-{{isotime `20060102`}}"
qemuargs = [
  ["-m", "2048"],
  ["-cpu", "host"]
]
shutdown_command = "echo \"uname -a > /etc/buildID; date +%Y%m%d >> /etc/buildID; rpm -qa | sort > /etc/packages.log; sed -i '/uname/d' /etc/rc.d/rc.local && shutdown -h now\" >> /etc/rc.d/rc.local; reboot"
skip_compaction  = false
disk_compression = true
ssh_password     = "oraclelinux10"
ssh_username     = "root"
ssh_wait_timeout = "15m"
vm_name          = "{{build_name}}-{{isotime `20060102`}}.qcow2"
net_device       = "virtio-net"
disk_interface   = "virtio-scsi"
